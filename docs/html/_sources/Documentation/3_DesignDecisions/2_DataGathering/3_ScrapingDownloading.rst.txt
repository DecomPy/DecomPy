Scraping and Downloading Files from GitHub using GitHubScraper
##################################################################

:Authors and Last Update:
    | YiZhuang Garrard, November 20, 2018
    | ygarrar1@asu.edu

.. contents:: Table of Contents
    :local:

-----------------------------------------------------------------------------------------------------------------

Overview
=========
This page covers the though process of how GitHub repositories are scraped, how files are downloaded and stores, and
other miscellaneous things that a person trying to figure out what's going on would find useful.

Relevant Classes
===================
The classes that pertain to this section are GitHubScraper and it's parent, WebNavigator. Zachary Monroe made the
WebNavigator class, and I just piggybacked off of it because it works. It's also well commented. I did have to
modify it a bit so that when thing's don't work as intended I could fix it. The content on this page will all relate
to GitHubScraper.

Relevant Methods
================
The only method that anybody not maintaining or improving on GitHubScraper is

.. highlights::
    download_all_file(repo_urls, target_directories=None)

If you are maintaining or improving this class, then everything will be covered further down.

How To Use
==========
Pass in equally-long lists of GitHub repository URLs and directories to download into into

.. highlights::
    GitHubScraper.download_all_files(repo_urls, target_directories=None)

If repo_urls is longer than 1, than target_directories must be specified.

Valid examples of calling this are:

.. highlights::
    GitHubScraper.download_all_files("https://github.com/hexagon5un/AVR-Programming", "Medium sized repo")

    GitHubScraper.download_all_files("https://github.com/hexagon5un/AVR-Programming")

    GitHubScraper.download_all_files(["https://github.com/hexagon5un/AVR-Programming/tree/master/Chapter19_EEPROM"], "FolderA")

    GitHubScraper.download_all_files(["https://github.com/hexagon5un/AVR-Programming/tree/master/Chapter19_EEPROM","https://github.com/hexagon5un/AVR-Programming/tree/master/Chapter06_Digital-Input"], ["FolderA", "FolderB"])

    GitHubScraper.download_all_files("https://github.com/hexagon5un/AVR-Programming/tree/master/Chapter19_EEPROM/vigenereCipher")

How does GitHubScraper Scrape?
==============================================
Carefully. Rather, I tried to be careful, but I'm sure you can muck it up.

Entry Point
-----------
The entry point of the scraping process is when a user passes in two lists into

.. highlights::
    GitHubScraper.download_all_files(repo_urls, target_directories=None).

The first list is a list of URLs to GitHub repositories. The URL can lead to the top level of the repository, or any
subdirectory within the repository, and only files that are in the directory and children directory will be downloaded.
The second list if the names of the target directories that files will be downloaded into. I did this because other
parts of the data gathering step are easier if specific names can be specified. The two lists must be equal length: If
they are not the same lengths, then it doesn't make too much sense. For example, if there were more repository URLs and
target directory addresses, then where should the excess files from the extra repositories go? I could generate names
for them, but decided that it would be better not to do anything rather than download files into a directory which
nobody knows the name of. Conversely, if the target directories list is longer than the repo URLs list, what should I
do? I decided not to think too hard about it, and just enforced that the lengths of the two arguments have to be the
same.

If the two arguments are just strings, they are converted to lists with one item in them.

To summarize, the user passes in a list of GitHub repository URLs and an equally-long list of directories to download
files into. The files from each repository will be downloaded into the directory in the same index in the directory
list.

Getting Page Contents
---------------------
Look at

.. highlights::
    WebNavigator.getContent(link)

The program sends out a request, and gets the page back. Most of the time.
If the same GitHub URL is requested too many times, the GitHub server will give you one of the HTTP errors about
sending too many requests.

Extracting URLs from Page Content
---------------------------------
Look at

.. highlights::
    WebNavigator.getAbsoluteLinksFromPage(link, domain=None)

I actually don't know how it works, so if you want to know, you actually have to look at it.

Filtering Useful URLs from URLs
-------------------------------
The URLs that are useful are the ones that lead to subdirectories within the repository as well as links to C files.
There are two separate lists to store these URLs, and they are extended every time a page is scraped and URLs
extracted. The method is

.. highlights::
    GitHubScraper.__scrape_page_urls(url).

The first list is called subfolder_links and it holds the URLs to subdirectories. It is extended with every URL that has
the substring "/tree/master/", doesn't have "#", isn't the current page URL, and the length of the URL is longer that
the URL of the current page. "/tree/master/" makes sure that any URL that is selected is within the master branch. The
"tree" portion of that subsection indicates that it is a directory rather than a file. "#"'s are excluded because they
are just specific sections of the current page. The current page URL is excluded because otherwise the scraping process
would infinitely loop. Scraped URLs have to be longer than the current page URL to ensure that any save URL does not
lead to a parent of the current page, thereby creating an infinite loop of scraping.

The second list is called file_links and it holds the links to files that will be downloaded. It is extended with every
URL that has the substring "/blob/master/" and ends with ".c". "blob" from "/blob/master/" indicates that the URL
leads to a file rather than a directory, and "master" indicates that the file is on the master branch. Since the file
ends with ".c", it's a C file.

Validating URLs
---------------
There is no purposely-built validation for URLs. If the user provides a bad URL, then the result is their problem,
not mine. I actually haven't tried putting in a URL to someplace that is not a GitHub repository, but I suspect that
the program will eventually stop without destroying your directory tree. Just don't put in bad URLs.

With that said, there is some unintentional URL validation built in when scraping is underway, which is the filter
described in `Filtering Useful URLs from URLs`_. This makes is difficult to find URLs that this program will use if any
URL is passed as an argument in the `Entry Point`_.

Going Through All Repository Directories
----------------------------------------
Because of how URLs are extracted and filtered, as described in `Filtering Useful URLs from URLs`_ and
`Filtering Useful URLs from URLs`_, it is (not mathematically) guaranteed that the directory and every child directory
from the argument URL will be traversed. I initially thought that I would do a breadth-first search of the directory
tree, but because I implemented multithreading, there's no real order to how the directories are traversed.

How Does GitHubScraper Deal With Files?
=======================================

Downloading Files
--------------------------------------
After getting the file URLs from `Filtering Useful URLs from URLs`_, tuples are created that are made of three things:
the file name, which is retrieved from the last token of each URL when delimiting by "/"; the first URL within the page
that has the substring "raw" is used to request the page content from the GitHub server; and the content of the response
from the server. Content is retrieved as described in `Getting Page Contents`_. The method is called
GitHubScraper.__download_file(file_page_link), where file_page_link is the tuple described.

Storing Files
--------------------------------------
Using the target directory as described in `Entry Point`_, the import os is used to create a directory at that
directory if one does not already exist, creates a subdirectory call "C_files" within it, and writes a file using
the file name and content described in the tuple in `Downloading Files`_. Occasionally, there
is a UnicodeEncodeError, but I just print the error and ignore it because I don't want to do research on that.
The method is called GitHubScraper.__file_content_into_storage(content_url_tuple, target_directory), where
content_url_tuple is the tuple, and target_directory is the directory to store the file.

Updating json file
--------------------------------------------
Only the target directory is needed to update the json file within that directory. The relevant method is
GitHubScraper.__update_meta(target_directory). If the directory doesn't exist, that means that there were no C files
to download, so it just returns. If the directory does exist, it is checked to see if the json file exists. If it
exists, then update it using the datetime package, and if it doesn't exist, create the file. The date is written
in YYYY-MM-DD HH:MM:SS format so that the database can query it or something. I don't actually know how databases work.

How Does GitHubScraper Multithread work?
===========================================
Because scraping is a highly IO dependent process, it is better to utilize threads rather than processes.

GitHubScraper uses ThreadPoolExecutor to manage all the threads and futures. There are three sources of futures:
subfolder_links, file_links, and file_name_url_content_tuples. subfolder_links is a list of links that need to be
scraped. file_links is a list of links to files that need to be downloaded. file_name_url_contents_tuples are tuples
that are downloaded file information but still needs to be stored. Elements from subfolder_links are popped into
GitHubScraper.__scape_page_urls as a future, as are file_link elements into GitHubScraper.__download_file and
file_name_url_content_tuples into GitHubScraper.__file_content_into_storage. subfolder_links and file_links are
populated from `Filtering Useful URLs from URLs`_. file_name_url_content_tuples is populated from `Downloading
Files`_. The number of workers is set as the default, since I couldn't find any compelling reason to change that.
I limited the number of futures to have a minimum ceiling of 250, and maximum ceiling of the longest length between
subfolder_links and file_links. The maximum ceiling is enforced by only allowing elements of subfolder_links or
file_links to be popped off for processing when the length of one of them is less than the number of futures that
are still not complete. I do this for performance reasons, since I don't want to have any large data structure
taking up time reallocating memory, and keeping everything bounded to the same maximum minimizes the number of
times memory has to be reallocated. Elements in file_name_url_content_tuples are submitted for processing as fast
as possible to minimize latency of the entire program. I don't want to file everything towards the end of the
scraping process because I think it's faster to do it the way I am. It also keeps file_name_url_content_tuples to a
minimum, since it has the potential to be huge due it each tuple holding all the text of a file in addition to the
file name and the URL.

What is the Performance of GitHubScraper?
=========================================
About 100 kB/s of pure C code. This was measured by scraping through `Linux <https://github.com/torvalds/linux>`_. So
it's pretty slow.

How Is GitHubScraper Tested?
============================
Unit tests. I really need to put in more tests. They're not comprehensive right now.


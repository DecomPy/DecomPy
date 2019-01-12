Obtaining the Proper Files from GitHub using FileGetter
##############################################################

:Authors and Last Update:
    | YiZhuang Garrard, January 11, 2019
    | ygarrar1@asu.edu

.. contents:: Table of Contents
    :local:

-----------------------------------------------------------------------------------------------------------------

FileGetter is the class that obtains all the C files from a GitHub repository and places the
files in a single folder.

Usage
-----
Call the method ``download_all_files`` from ``FileGetter`` and pass the URL of the repository
you want the files from.

.. highlights:: FileGetter.download_all_files("https://github.com/torvalds/linux")


Alternatively, call the method ``download_all_files`` from ``FileGetter`` and pass the URL of
the repository you want the files from as well as name of the folder you want the files to
be stored in. Otherwise, the files will be stored in folder with the username of the repository
owner with the repository name appended.

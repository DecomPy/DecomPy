import urllib.request, urllib.error, urllib.parse
from bs4 import BeautifulSoup
import re


class WebNavigator(object):
    """Defines methods for navigating web links"""

    @staticmethod
    def getContent(link):
        """
        Retrieves the content from a link

        :param link: An absolute URL
        :return: page content
        :rtype: str
        """
        pageSource = ""
        try:
            response = urllib.request.urlopen(link)
            try:
                pageSource = response.read().decode(response.headers.get_content_charset())
            except (TypeError, UnicodeDecodeError):
                pass
        except (urllib.error.HTTPError, urllib.error.URLError, TimeoutError):
            pass

        return pageSource

    @staticmethod
    def getVisibleTextContent(link):
        """
        Retrieves only the visible text from a link (no tags, etc.)

        :param link: An absolute URL
        :return: list of visible text
        :rtype list of str
        """
        def visible(element):
            if element.parent.name in ['style', 'script', '[document]', 'head', 'title']:
                return False
            elif re.match('<!--.*-->', str(element.encode('utf-8'))):
                return False
            return True

        try:
            response = urllib.request.urlopen(link)
            data = BeautifulSoup(response, 'lxml').findAll(text=True)

            visibleSource = list(filter(visible, data))
            return visibleSource

        except (urllib.error.HTTPError, urllib.error.URLError, TimeoutError):
            return ""


    @staticmethod
    def getLinks(content):
        """
        Finds all links contained on a page from a link

        :param str content: HTML content of a page
        :return: a set of links
        :rtype: set of strings
        """
        soup = BeautifulSoup(content, 'lxml')
        links = set([link.get('href') for link in soup.find_all('a')])
        return links

    @staticmethod
    def limitDomain(absoluteLinks, domain):
        """
        Prunes all links outside of a given domain

        :param links A set of absolute links
        :type links: set of strings
        :param str domain: The domain used to filter the links. Should be of form example.com
        (not of www.google.com or https://www.example.com)
        :return: A filtered set of links
        :rtype set of strings
        """
        domainRegex = re.compile("%s/" % domain)
        return set(filter(domainRegex.search, absoluteLinks))

    @staticmethod
    def getAbsolute(ResolvedParent, RelativeLinks):
        """
        Creates absolute URLs from a set of links and their parent

        :param str ResolvedParent: Any resolved parent URL
        :param set RelativeLinks: A set containing relative URLs
        :type RelativeLinks: set of strings
        :return: The absolute URLs of the relative URLs
        :rtype: set of str
        """
        return set(urllib.parse.urljoin(ResolvedParent, RelativeLink) for RelativeLink in RelativeLinks)

    @staticmethod
    def getAbsoluteLinksFromPage(link, domain=None):
        """
        Combines above methods into single explore method

        :param link: the absolute link to resolve
        :param domain: the domain of the above link to stay within (default is no domain limiting)
        :return:
        """
        content = WebNavigator.getContent(link)
        links = WebNavigator.getLinks(content)
        absLinks = WebNavigator.getAbsolute(link, links)
        localLinks = absLinks
        if domain:
            localLinks = WebNavigator.limitDomain(absLinks, domain)
        return localLinks


if __name__ == "__main__":
    content = WebNavigator.getContent("https://www.google.com/")
    links = WebNavigator.getLinks(content)
    absLinks = WebNavigator.getAbsolute("https://www.google.com/", links)
    localLinks = WebNavigator.limitDomain(absLinks, "google.com")

    print(content, links, absLinks, localLinks, sep="\n" + "*" * 25 + "\n")

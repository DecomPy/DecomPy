# BSD 3-Clause License
#
# Copyright (c) 2018, Zachary Lynn Monroe, YiZhuang Garrard
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
# * Redistributions of source code must retain the above copyright notice, this
#   list of conditions and the following disclaimer.
#
# * Redistributions in binary form must reproduce the above copyright notice,
#   this list of conditions and the following disclaimer in the documentation
#   and/or other materials provided with the distribution.
#
# * Neither the name of the copyright holder nor the names of its
#   contributors may be used to endorse or promote products derived from
#   this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
# FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
# SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
# CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
# OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
# OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

import urllib.request, urllib.error, urllib.parse
from bs4 import BeautifulSoup
import re
import time


class WebNavigator:
    """Defines methods for navigating web links"""

    DEBUG = False  # Whether to print debug info or not
    TIMING = False  # Whether to print timing info or not
    TIMER = 0  # Used if TIMING is enabled

    @staticmethod
    def getContent(link):
        """
        Retrieves the content from a link

        :param link: An absolute URL
        :return: page content
        :return: str
        """

        if WebNavigator.TIMING:
            WebNavigator.TIMER = time.time()

        pageSource = ""
        try:
            response = urllib.request.urlopen(link)
            try:
                pageSource = response.read().decode(response.headers.get_content_charset())
            except (TypeError, UnicodeDecodeError):
                pass
        except (urllib.error.HTTPError, urllib.error.URLError, TimeoutError):
            pass

        if WebNavigator.TIMING:
            print("WEBNAVIGATOR: Time to get content from", link, ":", time.time() - WebNavigator.TIMER)

        return pageSource

    @staticmethod
    def getVisibleTextContent(link):
        """
        Retrieves only the visible text from a link (no tags, etc.)

        :param link: An absolute URL
        :return: list of visible text
        :return list of str
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
        :return: set of strings
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
        :return: set of strings
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
        :return: set of str
        """
        return set(urllib.parse.urljoin(ResolvedParent, RelativeLink) for RelativeLink in RelativeLinks)

    @staticmethod
    def getAbsoluteLinksFromPage(link, domain=None):
        """
        Combines above methods into single explore method

        :param link: the absolute link to resolve
        :param domain: the domain of the above link to stay within (default is no domain limiting)
        :return: set of absolute URLs within a page
        """
        content = WebNavigator.getContent(link)
        links = WebNavigator.getLinks(content)
        absLinks = WebNavigator.getAbsolute(link, links)
        localLinks = absLinks
        if domain:
            localLinks = WebNavigator.limitDomain(absLinks, domain)
        return localLinks


if __name__ == "__main__":
    print(WebNavigator.getAbsoluteLinksFromPage("https://github.com/DecomPy/DecomPy"))
    # print("WebNavigator does nothing in its main")
    # print(WebNavigator.getFileURLSFromGitHubRepo("https://github.com/DecomPy/valid_and_compilable_1"))
    # WebNavigator.getFilesfromGitHubFileURLs(["https://github.com/DecomPy/valid_and_compilable_1/blob/master/main.c",
    #                                           "https://github.com/DecomPy/valid_and_compilable_1/blob/master/subfolder/main2.c"])

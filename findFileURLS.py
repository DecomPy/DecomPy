from bs4 import BeautifulSoup as bs
import urllib.request

print ("Start")

rawHTML = urllib.request.urlopen('https://github.com/DecomPy/valid_and_compilable_1')
soup = bs(rawHTML, 'html.parser');

for link in soup.find_all('a'):
    print(link.get('href'))

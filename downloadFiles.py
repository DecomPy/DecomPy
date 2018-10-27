from bs4 import BeautifulSoup as bs
import urllib.request

print ("Start")
x = urllib.request.urlopen('https://github.com/DecomPy/valid_and_compilable_1')
print(x.read())

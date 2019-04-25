Filtering the Repositories
**************************

This is a log of major design decisions and reasoning made during creation of the Repo Filtering section of DecomPy.
At the time of writing this, this is made up of two classes, the RepoFiltering class, and the RepoStructure class.

-----------------------------------------------------------------------------------------------------------------

Relevant Classes
===================
The classes that pertain to this section are ``RepoFilter.py`` and ``RepoStructure.py``.

-----------------------------------------------------------------------------------------------------------------

Repo Filtering is Based Around Storing Stages to JSON Files
    Partially, this decision was driven by the fact that I would not have                                                                  
    internet most of the time I was writing it. I do think that the end result                                                             
    has some merit however, since it allows modularly redoing sections as we   
    improve and doesn't overly utilize requests to GitHub (rate limiting).     

-----------------------------------------------------------------------------------------------------------------

Using GitHub's API
    By using GitHub's API, it was much easier to generate a list of acceptable
    repos without doing costly web scrapping. There are some downsides though, 
    since the request has a limited amount of info. Using GitHub's latest api (the non GraphQL one)
    we have all the information we need. However, the process is too fast, so we need to authenticate ourselves.
    Luckily, this is just your GitHub's username and password. HOWEVER, do not store it in the python file or on GitHub!
    Instead, store it in the ignored (local file) named as ``config.json``.

Store it like so: ::

  {
      "github": {
        "username": "YOUR GITHUB USERNAME",
        "password": "YOUR GITHUB PASSWORD"
      }
  }

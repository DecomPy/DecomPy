Filtering the Repositories
**************************

This is a log of major design decisions and reasoning made during creation of the Repo Filtering section of decompy.
At the time of writing this, this is made up of two classes, the RepoFiltering class, and the RepoStructure class.

-----------------------------------------------------------------------------------------------------------------

Repo filtering is based around storing stages to json files 
    Partially, this decision was driven by the fact that I would not have                                                                  
    internet most of the time I was writing it. I do think that the end result                                                             
    has some merit however, since it allows modularly redoing sections as we   
    improve and doesn't overly utilize requests to GitHub (rate limiting).     

-----------------------------------------------------------------------------------------------------------------

Using GitHub's api
    By using GitHub's api, it was much easier to generate a list of acceptable
    repos without doing costly web scrapping. There are some downsides though, 
    since the request has a limited amount of info. For example, the license is
    not included, which may mean scraping is needed anyways, but at least we   
    can limit it.                                                              
                                      
-----------------------------------------------------------------------------------------------------------------

Using GitHub's legacy api 
    For me, this one feels odd. GitHub's new api has a lot more features and   
    seems really nice. However, it has two major problems. At the momement, it 
    never seems to get nearly as good of results. It will find unrelated repos 
    and I have to filter out way more. It also is much harder to use.          


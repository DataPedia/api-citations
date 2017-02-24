
## Api-citations

api-citations is a tool to generate citations for the Wikipedia project. The goal is to provide an URL and to get the whole citation using [Modèle:Article](https://fr.wikipedia.org/wiki/Mod%C3%A8le:Article) or [Modèle:Ouvrage](https://fr.wikipedia.org/wiki/Mod%C3%A8le:Ouvrage).

This very early version only works with LeMonde.fr. 

Using a browser, the tool can be tested at : 

    http://localhost:8000/lemonde?url=http://www.lemonde.fr/election-presidentielle-2017/article/2017/02/24/macron-un-projet-sans-rupture-avec-le-hollandisme_5084874_4854003.html

Using a terminal, this can be tested using the following command line :     
    
    $ curl "http://localhost:8000/lemonde?url=http://www.lemonde.fr/election-presidentielle-2017/article/2017/02/24/macron-un-projet-sans-rupture-avec-le-hollandisme_5084874_4854003.html"

### Tools

This API works using R with the following libraries : 

- plumber, 
- dplyr, 
- rvest
- stringr.


library(dplyr)
library(rvest)
library(stringr)
library(plumber)
r <- plumb("citations.R") 
r$run(port=8000)

# $ curl "http://localhost:8000/lemonde?url=http://www.lemonde.fr/election-presidentielle-2017/article/2017/02/24/macron-un-projet-sans-rupture-avec-le-hollandisme_5084874_4854003.html"


#' Cite a Le Monde article
#'
#' @param url url of the article
#'
#' @return a wikicitation
#' @export
#'
#' @examples
#' "http://www.lemonde.fr/economie/article/2016/02/20/robert-j-gordon-l-age-d-or-de-la-croissance-est-derriere-nous_4868845_3234.html" %>%
#' make_citation_lemonde()

#* @get /lemonde
make_citation_lemonde <- function(url) {
  
  article <- url %>% read_html()
  
  name <- article %>% 
    html_nodes(".auteur a") %>% 
    html_text() %>% 
    str_split(pattern = "[[:blank:]]") %>% 
    unlist()
  
  date_publication <- article %>% 
    html_node("time") %>% 
    html_text() 
  
  date_pattern <- "([[:digit:]]{2})\\.([[:digit:]]{2})\\.([[:digit:]]{4}).*"
  
  paste(
    "{{article |",  
    "| prénom1 = ", name[[1]], 
    "| nom1 = ", name[[2]], 
    "| titre = ", article %>% html_nodes(".tt2") %>% html_text(), 
    "| périodique = Le Monde", 
    "| lien périodique = Le Monde", 
    "| jour = ", date_publication %>% 
      str_replace(
        pattern = date_pattern, 
        replacement = "\\1"
      ), 
    "| mois = ", date_publication %>% 
      str_replace(
        pattern = date_pattern, 
        replacement = "\\2"
      ), 
    "| année = ", date_publication %>% 
      str_replace(
        pattern = date_pattern, 
        replacement = "\\1"
      ), 
    "| url = ", url, 
    "}}"
  )
}


library(rvest)
library(httr)
library(jsonlite)

template="https://www.googleapis.com/customsearch/v1?key=AIzaSyBX0wXkc7B8a7xRamGWY0SUHBO3zQjey1g&cx=008545004345632418708:amsec8dvzdk&q="

repeat {

  query <- readline(prompt="Enter a query, or exit to quit: ")

  if (query == "exit") break;

  result = content(GET(paste(template,query,sep='')))

  #write(toJSON(result), "result.json")
  
  for (i in 1:length(result[['items']])) {
    print(result[['items']][[i]][['title']])
  }
}
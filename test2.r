library(rvest)
library(httr)
library(RJSONIO)
library(jsonlite)

template="https://www.googleapis.com/customsearch/v1?key=AIzaSyBX0wXkc7B8a7xRamGWY0SUHBO3zQjey1g&cx=008545004345632418708:amsec8dvzdk&q="

query="iron"

result = content(GET(paste(template,query,sep='')))

#write(toJSON(result), "result.json")

print(result[['items']][[5]])
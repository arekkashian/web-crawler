library(rvest)
library(httr)

webpage = read_html("https://en.wikipedia.org/wiki/Iron")

html_node(webpage, '.mw-parser-output')
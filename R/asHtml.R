#' Transform to html
#'
#' Transform string into HTML ready for Rmarkdown and Shiny
#'
#' @param  h string
#'
#' @return HTML form of the string for easy insertion in Shiny or Rmarkdown documents
#'
#' @examples
#' string <- "<b>smile</b>" #html b tag included to make the string bold
#' string_trans <- as.html(string)
#' cat(string) #when inserted in Rmarkdown will not show up as bolded
#' cat(string_trans) #when inserted into Rmarkdown will show up as bolded after knitting
#'
#' @export
#'


as.html <- function(h) {
  h <- as.character(h)
  attr(h, "html") <- TRUE
  class(h) <- c("html", "character")
  return(h)
}

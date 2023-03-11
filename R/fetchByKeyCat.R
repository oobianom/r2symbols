#' Fetch multiple symbols by category
#'
#' Fetch one or more symbols by category
#'
#' @param category symbol categories to fetch (minimum: 4 characters)
#' @param font.size font size as integer
#' @param font.weight font weight as integer
#' @param font.color font color e.g. red, blue, cyan
#' @param if.error show error response
#'
#' @section Complete cheatcheat for symbols:
#' Common symbols include alpha, beta, copyright, registered, theta, sigma. See the complete list at
#' \url{https://github.com/oobianom/r2symbols}.
#'
#' @return get symbols from a particular category
#'
#' @examples
#' symCat("arrows")
#' symCat("smiley", font.size = 32)
#' symCat("music")
#' symCat("random")
#'
#' @export

symCat <- function(category, font.size = NULL, font.weight = NULL, font.color = NULL, if.error = TRUE) {

  # remove non-alphanumeric
  category <- gsub("[^a-zA-Z]","",category)

  # exit if category is less than 4 characters
  if(nchar(category) < 4) stop("Provide at atleast 4 characters for the category")

  # load symbols if not loaded
  if(!exists('.symbols_ph'))symload(font.size = font.size, font.weight = font.weight, font.color = font.color)

  # select symbols by category
  sym.list <- .symbols[grepl(category,.symbols$category,ignore.case = TRUE) & (!is.na(.symbols$alias)),]$alias

  # return error if no symbols are picked, else return symbols
  if(length(sym.list)){
    symbol(sym.list, font.size = font.size, font.weight = font.weight, font.color = font.color)
  }else{
    if(if.error) warning("No symbols match the category term that was entered")
  }

}



#' Fetch multiple symbols by keyword
#'
#' Fetch one or more symbols by keyword
#'
#' @param keyword symbol keyword to fetch
#' @param font.size font size as integer
#' @param font.weight font weight as integer
#' @param font.color font color e.g. red, blue, cyan
#' @param if.error show error response
#'
#' @section Complete cheatcheat for symbols:
#' Common symbols include alpha, beta, copyright, registered, theta, sigma. See the complete list at
#' \url{https://github.com/oobianom/r2symbols}.
#'
#' @return get symbols from a particular category
#'
#' @examples
#' symKey("arrow", font.size = 45)
#' symKey("animal", font.color = "red")
#' symKey("random454")
#' symKey("show nothing")
#'
#' @export

symKey <- function(keyword, font.size = NULL, font.weight = NULL, font.color = NULL, if.error = TRUE) {

  # remove non-alphanumeric
  keyword <- gsub("[^a-zA-Z]","",keyword)

  # exit if keyword is less than 4 characters
  if(nchar(keyword) < 4) stop("Provide at atleast 4 characters for the category")

  # load symbols if not loaded
  if(!exists('.symbols_ph'))symload(font.size = font.size, font.weight = font.weight, font.color = font.color)

  # select symbols by keyword
  sym.list <- .symbols[grepl(keyword,.symbols$alias2,ignore.case = TRUE) & (!is.na(.symbols$alias)),]$alias

  # return error if no symbols are picked, else return symbols
  if(length(sym.list)){
    symbol(sym.list, font.size = font.size, font.weight = font.weight, font.color = font.color)
  }else{
    if(if.error) warning("No symbols match the keyword term that was entered")
  }

}

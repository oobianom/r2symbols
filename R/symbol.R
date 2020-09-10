#' Get a desired symbol
#'
#' Get a symbol by name or numberfor use in Rmarkdown or Shiny apps, could be a mathematical symbol or other kinds of symbols
#'
#' @param ... the symbols to display
#' @param font.size font size as integer
#' @param font.weight font weight as integer
#' @param font.color font color e.g. red, blue, cyan
#' @param if.error error response
#' @param search.units.each whether to search single letter columns
#'
#' @section Complete cheatcheat for symbols:
#' Common symbols include alpha, beta, copyright, registered, theta, sigma. See the complete list at
#' \url{https://github.com/oobianom/r2symbols}.
#'
#' @return symbol hex for HTML integration
#'
#' @examples
#' symbol("trademark")
#' symbol("alpha")
#' symbol("arrow-right")
#' symbol(144)
#'
#' @export

symbol <- function(..., font.size = NULL, font.weight = NULL, font.color = NULL, if.error = FALSE, search.units.each = FALSE) {
  if(!exists('.symbols_ph'))symload()
  name0 <- unlist(list(...))
  if(is.null(name0))return(NULL)
  tranhtml0 <- NULL
  for (name in name0) {
    if (!exists(".symbols")) sym(font.size, font.weight, font.color)
    if (!exists(".symbols")) {
      return()
    } # return if the symbol list has nothing
    newsym <- .symbols[.symbols$alias == name, ] # see if the name exists in the alias
    if (!nrow(newsym)) newsym <- .symbols[.symbols$alias2 == name, ] # else see if the name exists in the alias
    if ((!nrow(newsym)) & (search.units.each)) newsym <- .symbols[.symbols$alias3 == name, ] # else see if the name exists in the alias
    if (nrow(newsym)) {
      returnVal <- as.character(newsym$htm[1])
      span.style <- NULL

      if (!is.null(font.size)) {
        span.style <- paste0("font-size:", font.size, "px!important;")
      }
      else {
        if (!is.null(getOption("r2symbols.font.size"))) span.style <- paste0("font-size:", getOption("r2symbols.font.size"), "px!important;")
      }

      if (!is.null(font.weight)) {
        span.style <- paste0(span.style, "font-weight:", font.weight, "!important;")
      }
      else {
        if (!is.null(getOption("r2symbols.font.weight"))) span.style <- paste0(span.style, "font-weight:", getOption("r2symbols.font.weight"), "!important;")
      }

      if (!is.null(font.color)) {
        span.style <- paste0(span.style, "color:", font.color, "!important;")
      }
      else {
        if (!is.null(getOption("r2symbols.font.color"))) span.style <- paste0(span.style, "color:", getOption("r2symbols.font.color"), "!important;")
      }

      if (!is.null(span.style)) returnVal <- paste0("<span style='", span.style, "'>", returnVal, "</span>")
      tranhtml0 <- paste0(tranhtml0, returnVal)

    } else {
      if (if.error) message("No symbol by that indicated name")
    }
  }
  if (!is.null(tranhtml0)) {
    return(as.html(tranhtml0))
  }
}

#' Get a desired symbol
#'
#' Get a symbol by name or number for use in Rmarkdown or Shiny apps
#'
#'
#' @inheritParams symbol
#'
#' @return symbol hex for HTML displays
#'
#' @examples
#' sym("trademark")
#' sym("alpha")
#' sym("arrow-right")
#' sym(144)
#'
#' @export
#'

sym <- symbol


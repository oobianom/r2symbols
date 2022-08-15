#' Symbol setting
#'
#' Font styling for symbols
#'
#' @param font.size font size as integer
#' @param font.weight font weight eg. normal, bold or lighter
#' @param font.color font color e.g. red, blue, cyan
#'
#' @return No values returned
#'
#' @examples
#' symbol.setting(40, "bold", "green") # ascribe settings for all symbols
#' symbol("alpha") # display the apha symbol
#' symbol.setting() # clear settings for symbols
#' symbol("alpha") # dislay the alpha symbol
#' @export
#'


symbol.setting <- function(font.size = NULL, font.weight = NULL, font.color = NULL) {
 options(r2symbols.font.size = font.size)
 options(r2symbols.font.weight = font.weight)
 options(r2symbols.font.color = font.color)
}


#' Symbol setting
#'
#' Font styling for symbols
#'
#' @inheritParams symbol.setting
#'
#' @return No values returned
#'
#' @examples
#' symbol.setting(40, "bold", "green") # ascribe settings for all symbols
#' symbol("alpha") # display the apha symbol
#' symbol.setting() # clear settings for symbols
#' symbol("alpha") # dislay the alpha symbol
#' @export
#'

sym.setting <- symbol.setting

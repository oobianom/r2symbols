#' Symbol repository loader
#'
#' Loads all the available symbols
#'
#' @param font.size font size as integer
#' @param font.weight font weight as integer
#' @param font.color font color e.g. red, blue, cyan
#' @param if.error error response
#'
#' @return No returns, but symbols are loaded
#'
#' @examples
#' symload(40, "normal", "purple") # load symbols and add symbol settings
#' symload() # load symbols without custom settings
#'
#' @export
#'



symload <- function(font.size = NULL, font.weight = NULL, font.color = NULL, if.error = TRUE) {
  symbol.setting(font.size, font.weight, font.color)
  pkgpath <- system.file("data_pack.ob", package = "r2symbols")
  symbols <-load(pkgpath,envir = .GlobalEnv)
  if(!exists(".symbols")){
    if (if.error) message("No symbol data found")
  }
  else{
    setsymbph <- 'assign(".symbols_ph",TRUE,envir = .GlobalEnv)'
    eval(parse(text = as.character(setsymbph)))
  }
}

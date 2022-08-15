#' r2symbols
#'
#' @name r2symbols
#' @docType package
#' @import jsonlite
#' @import utils
#' @import htmltools
#' @noRd
"_PACKAGE"


.onLoad <- function(libname, pkgname) {
  utils::globalVariables(c(".symbols",".symbols_ph"))
}

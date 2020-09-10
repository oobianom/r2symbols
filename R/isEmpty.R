#' Is string empty
#'
#' Return TRUE or FALSE after checking if a string is empty
#'
#' @param string the string to be checked
#'
#' @return Returns TRUE or FALSE
#'
#' @examples
#' string <- "r2resume"
#' string2 <- NULL
#' is.empty(string)
#' is.empty(string2)
#' @export
#'
#'


is.empty <- function(string) {
  if (is.null(string)) {
    return(TRUE)
  }
  if ((string == "") | (is.na(string))) {
    return(TRUE)
  } else {
    return(FALSE)
  }
}

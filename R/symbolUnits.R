#' Transform custom units
#'
#' Enter a unit and it will automatically be transformed to the appropriate form
#'
#' @param units the desired unit e.g ug/mL,pg/mL, ab, yL
#' @param error whether to report any errors
#'
#' @return Transformed units with substitution of symbols with appropriate symbol hex
#'
#' @examples
#' symbol.units("ug/mL") # u will be transformed to mu
#' symbol.units("pg/mL") # no letter will be transformed
#' @export
#'

symbol.units <- function(units, error = FALSE) {
  split_unit <- strsplit(gsub("[[:space:]]", "", units), "")[[1]]
  unit_result <- NULL
  for (i in split_unit) {
    fetch_unit_html <- symbol(i, search.units.each = TRUE)
    if (!is.null(fetch_unit_html)) {
      unit_result <- paste0(unit_result, fetch_unit_html)
    } else {
      unit_result <- paste0(unit_result, i)
    }
  }

  if (is.null(unit_result)) {
    if (error) message("The unit you are trying to convert is not valid")
  }
  else {
    return(unit_result)
  }
}

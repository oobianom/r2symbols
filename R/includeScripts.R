#' Transform HTML into symbols
#'
#' Transform texts in HTML to symbols
#'
#' @note This function simple inserts a script within the output HTML, which transforms the content using the relevant HTML codes.
#'
#' @return A rendered HTML where simple text is transformed to symbols using HTML codes
#'
#' @examples
#' use.r2symbols()
#'
#' @export
#'


use.r2symbols <- function() {
  ssp <- "r2symbols"
  vs <- "1.1"
  template.loc1 <- file.path(find.package(package = ssp), "includes")
  path <- file.path(template.loc1,paste0(tolower(ssp), ".js"))
  lines <- readLines(path, warn = FALSE, encoding = "UTF-8")
  lines <- c("<script>",lines,"</script>")
  as.html(paste(lines,collapse = ""))

}

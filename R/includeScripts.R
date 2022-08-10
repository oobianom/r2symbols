#' Transform HTML into symbols
#'
#' Transform texts in HTML to symbols
#'
#' @param font.size font size as integer
#' @param font.weight font weight as integer
#' @param font.color font color e.g. red, blue, cyan
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


use.r2symbols <- function(font.size = NULL, font.weight = c("normal","bold","light"), font.color = NULL) {
  font.weight <- match.arg(font.weight)
  ssp <- "r2symbols"
  vs <- "1.1"
  template.loc1 <- file.path(find.package(package = ssp), "includes")
  path <- file.path(template.loc1,paste0(tolower(ssp), ".js"))
  lines <- readLines(path, warn = FALSE, encoding = "UTF-8")
  lines <- c("<script>",lines,"</script>")
  lines <- paste(lines,collapse = "")
  lines <- gsub("fwghtx",font.weight,lines)
  if(!is.null(font.size)) lines <- gsub("fsizex",font.size,lines)
  if(!is.null(font.color)) lines <- gsub("fcolrx",font.color,lines)

  as.html(lines)

}

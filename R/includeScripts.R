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

  font.weight <- match.arg(font.weight) #set font weight
  symload(font.size,font.weight,font.color) #init symbols

  #fetch js modifier
  ssp <- "r2symbols"
  path <- system.file(paste0("includes/",ssp, ".js"), package = ssp)
  lines <- readLines(path, warn = FALSE, encoding = "UTF-8")
  #lines <- c("<script>",lines,"</script>")
  lines <- paste(lines,collapse = "")
  lines <- gsub("fwghtx",font.weight,lines)
  if(!is.null(font.size)) lines <- gsub("fsizex",font.size,lines)
  if(!is.null(font.color)) lines <- gsub("fcolrx",font.color,lines)

  #combine js modifier with symbols and output
  symbolout <- jsonlite::toJSON(.symbols)
  lines <- paste(c("<script>var symbolpkgkeys = ",symbolout,";",lines,"</script>"),collapse = "")
  as.html(lines)
}

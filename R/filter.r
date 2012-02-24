#' Filter cells by name.
#' 
#' @param x a gtable object
#' @inheritParams base::grepl
#' @param trim if \code{TRUE}, \code{\link{gtable_trim}} will be used to trim
#'   off any empty cells.
#' @export
gtable_filter <- function(x, pattern, fixed = FALSE, trim = TRUE) {
  
  matches <- grepl(pattern, x$layout$name, fixed = fixed)
  x$layout <- x$layout[matches, , drop = FALSE]
  
  if (trim) x <- gtable_trim(x)
  
  x
}

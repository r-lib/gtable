#' Add padding around edges of table.
#'
#' @param x a \code{\link{gtable}} object
#' @param padding vector of length 4: top, right, bottom, left.  Normal
#'  recycling rules apply.
#' @export
gtable_add_padding <- function(x, padding) {
  padding <- rep(padding, length = 4)
  
  gtable_add_rows(x, pos = 1, height = padding[1])
  gtable_add_col(x, pos = -1, width = padding[2])  
  gtable_add_rows(x, pos = -1, height = padding[3])
  gtable_add_col(x, pos = 1, width = padding[4])
  x
}


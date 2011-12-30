#' Add column spacing.
#'
#' Adds \code{width} space between the columns
#' 
#' @param x a gtable object
#' @param width a vector of units of length 1 or ncol - 1
#' @export
gtable_add_col_space <- function(x, width) {
  n <- ncol(x) - 1
  if (n == 0) return(x)
  
  stopifnot(length(width) == 1 || length(width) == n)
  width <- rep(width, length = n)

  for(i in rev(seq_len(n))) {
    x <- gtable_add_cols(x, width[i], pos = i)
  }

  x
}

#' Add row spacing.
#'
#' Adds \code{height} space between the rows
#' 
#' @param x a gtable object
#' @param width a vector of units of length 1 or nrow - 1
#' @export
gtable_add_row_space <- function(x, height) {
  n <- nrow(x) - 1
  if (n == 0) return(x)
  
  stopifnot(length(height) == 1 || length(height) == n)
  height <- rep(height, length = n)
  
  for(i in rev(seq_len(n))) {
    x <- gtable_add_rows(x, height[i], pos = i)
  }
  
  x
}

#' Add row/column spacing.
#'
#' Adds \code{width} space between the columns or \code{height} space between
#' the rows.
#'
#' @name gtable_add_space
#' @param x a gtable object
NULL

#' @param width a vector of units of length 1 or ncol - 1
#' @export
#' @rdname gtable_add_space
gtable_add_col_space <- function(x, width) {
  stopifnot(is.gtable(x))
  n <- ncol(x) - 1
  if (n == 0) return(x)
  
  stopifnot(length(width) == 1 || length(width) == n)
  width <- rep(width, length.out = n)

  for(i in rev(seq_len(n))) {
    x <- gtable_add_cols(x, width[i], pos = i)
  }

  x
}

#' @param height a vector of units of length 1 or nrow - 1
#' @export
#' @rdname gtable_add_space
gtable_add_row_space <- function(x, height) {
  stopifnot(is.gtable(x))
  n <- nrow(x) - 1
  if (n == 0) return(x)
  
  stopifnot(length(height) == 1 || length(height) == n)
  height <- rep(height, length.out = n)
  
  for(i in rev(seq_len(n))) {
    x <- gtable_add_rows(x, height[i], pos = i)
  }
  
  x
}

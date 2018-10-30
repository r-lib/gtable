#' Add row/column spacing.
#'
#' Adds `width` space between the columns or `height` space between
#' the rows.
#'
#' @name gtable_add_space
#' @param x a gtable object
NULL

#' @param width a vector of units of length 1 or ncol - 1
#' @export
#' @rdname gtable_add_space
gtable_add_col_space <- function(x, width) {
  if (!is.gtable(x)) stop("x must be a gtable", call. = FALSE)
  n <- length(x$widths) - 1
  if (n == 0) return(x)

  if (!(length(width) == 1 || length(width) == n)) stop("width must be of length 1 or ncol - 1", call. = FALSE)
  width <- rep(width, length.out = n)

  for (i in rev(seq_len(n))) {
    x <- gtable_add_cols(x, width[i], pos = i)
  }

  x
}

#' @param height a vector of units of length 1 or nrow - 1
#' @export
#' @rdname gtable_add_space
gtable_add_row_space <- function(x, height) {
  if (!is.gtable(x)) stop("x must be a gtable", call. = FALSE)
  n <- length(x$heights) - 1
  if (n == 0) return(x)

  if (!(length(height) == 1 || length(height) == n)) stop("height must be of length 1 or nrow - 1", call. = FALSE)
  height <- rep(height, length.out = n)

  for (i in rev(seq_len(n))) {
    x <- gtable_add_rows(x, height[i], pos = i)
  }

  x
}

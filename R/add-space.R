#' Add row/column spacing.
#'
#' Adds `width` space between the columns or `height` space between
#' the rows, effictvely pushing the existing cells apart.
#'
#' @name gtable_add_space
#' @param x a gtable object
#'
#' @return A gtable with the additional rows or columns added
#'
#' @family gtable manipulation
#'
#' @examples
#' library(grid)
#'
#' rect <- rectGrob()
#' rect_mat <- matrix(rep(list(rect), 9), nrow = 3)
#'
#' gt <- gtable_matrix("rects", rect_mat, widths = unit(rep(1, 3), "null"),
#'                     heights = unit(rep(1, 3), "null"))
#'
#' plot(gt)
#'
#' # Add spacing between the grobs
#' # same height between all rows
#' gt <- gtable_add_row_space(gt, unit(0.5, "cm"))
#'
#' # Different width between the columns
#' gt <- gtable_add_col_space(gt, unit(c(0.5, 1), "cm"))
#'
#' plot(gt)
NULL

#' @param width a vector of units of length 1 or ncol - 1
#' @export
#' @rdname gtable_add_space
gtable_add_col_space <- function(x, width) {
  check_gtable(x)
  n <- length(x$widths) - 1
  if (n == 0) return(x)

  if (!(length(width) == 1 || length(width) == n)) {
    cli::cli_abort("{.arg width} must be of length 1 or ncol - 1")
  }
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
  check_gtable(x)
  n <- length(x$heights) - 1
  if (n == 0) return(x)

  if (!(length(height) == 1 || length(height) == n)) {
    cli::cli_abort("{.arg height} must be of length 1 or nrow - 1")
  }
  height <- rep(height, length.out = n)

  for (i in rev(seq_len(n))) {
    x <- gtable_add_rows(x, height[i], pos = i)
  }

  x
}

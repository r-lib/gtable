#' Add new rows in specified position.
#' 
#' @param pos new row will be added below this position. Defaults to
#'   adding row on bottom. \code{0} adds on the top.
#' @export
gtable_add_rows <- function(x, heights, clip = "inherit", pos = -1) {
  stopifnot(is.gtable(x))
  stopifnot(length(pos) == 1)
  n <- length(heights)
  
  pos <- neg_to_pos(pos, nrow(x))
  
  # Shift existing rows down
  x$heights <- insert.unit(x$heights, heights, pos)
  x$layout$t <- ifelse(x$layout$t > pos, x$layout$t + n, x$layout$t)
  x$layout$b <- ifelse(x$layout$b > pos, x$layout$b + n, x$layout$b)

  x
}

#' Add new columns in specified position.
#' 
#' @param pos new row will be added below this position. Defaults to
#'   adding col on right. \code{0} adds on the left.
#' @export
gtable_add_cols <- function(x, widths, clip = "inherit", pos = -1) {
  stopifnot(is.gtable(x))
  stopifnot(length(pos) == 1)
  n <- length(widths)
  
  pos <- neg_to_pos(pos, ncol(x))
  
  # Shift existing columns right
  x$widths <- insert.unit(x$widths, widths, pos)
  x$layout$l <- ifelse(x$layout$l > pos, x$layout$l + n, x$layout$l)
  x$layout$r <- ifelse(x$layout$r > pos, x$layout$r + n, x$layout$r)
  
  x
}



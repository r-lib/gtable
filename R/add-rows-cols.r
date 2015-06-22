#' Add new rows in specified position.
#'
#' @param x a \code{\link{gtable}} object
#' @param heights a unit vector giving the heights of the new rows
#' @param pos new row will be added below this position. Defaults to
#'   adding row on bottom. \code{0} adds on the top.
#' @export
#' @examples
#' library(grid)
#' rect <- rectGrob(gp = gpar(fill = "#00000080"))
#' tab <- gtable(unit(rep(1, 3), "null"), unit(rep(1, 3), "null"))
#' tab <- gtable_add_grob(tab, rect, t = 1, l = 1, r = 3)
#' tab <- gtable_add_grob(tab, rect, t = 1, b = 3, l = 1)
#' tab <- gtable_add_grob(tab, rect, t = 1, b = 3, l = 3)
#' dim(tab)
#' plot(tab)
#'
#' # Grobs will continue to span over new rows if added in the middle
#' tab2 <- gtable_add_rows(tab, unit(1, "null"), 1)
#' dim(tab2)
#' plot(tab2)
#'
#' # But not when added to top (0) or bottom (-1, the default)
#' tab3 <- gtable_add_rows(tab, unit(1, "null"))
#' tab3 <- gtable_add_rows(tab3, unit(1, "null"), 0)
#' dim(tab3)
#' plot(tab3)
gtable_add_rows <- function(x, heights, pos = -1) {
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
#' @param x a \code{\link{gtable}} object
#' @param widths a unit vector giving the widths of the new columns
#' @param pos new row will be added below this position. Defaults to
#'   adding col on right. \code{0} adds on the left.
#' @export
#' @examples
#' library(grid)
#' rect <- rectGrob(gp = gpar(fill = "#00000080"))
#' tab <- gtable(unit(rep(1, 3), "null"), unit(rep(1, 3), "null"))
#' tab <- gtable_add_grob(tab, rect, t = 1, l = 1, r = 3)
#' tab <- gtable_add_grob(tab, rect, t = 1, b = 3, l = 1)
#' tab <- gtable_add_grob(tab, rect, t = 1, b = 3, l = 3)
#' dim(tab)
#' plot(tab)
#'
#' # Grobs will continue to span over new rows if added in the middle
#' tab2 <- gtable_add_cols(tab, unit(1, "null"), 1)
#' dim(tab2)
#' plot(tab2)
#'
#' # But not when added to left (0) or right (-1, the default)
#' tab3 <- gtable_add_cols(tab, unit(1, "null"))
#' tab3 <- gtable_add_cols(tab3, unit(1, "null"), 0)
#' dim(tab3)
#' plot(tab3)
gtable_add_cols <- function(x, widths, pos = -1) {
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



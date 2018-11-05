#' Add new rows in specified position.
#'
#' Insert new rows in a gtable and adjust the grob placement accordingly. If
#' rows are added in the middle of a grob spanning multiple rows, the grob will
#' continue to span them all. If a row is added above or below a grob, the grob
#' will not span the new row(s).
#'
#' @param x a [gtable()] object
#' @param heights a unit vector giving the heights of the new rows
#' @param pos new row will be added below this position. Defaults to
#'   adding row on bottom. `0` adds on the top.
#'
#' @return A gtable with the new rows added.
#'
#' @family gtable manipulation
#'
#' @export
#'
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
#'
gtable_add_rows <- function(x, heights, pos = -1) {
  if (!is.gtable(x)) stop("x must be a gtable", call. = FALSE)
  if (length(pos) != 1) stop("pos must be a scalar unit", call. = FALSE)
  n <- length(heights)

  pos <- neg_to_pos(pos, length(x$heights))

  # Shift existing rows down
  x$heights <- insert.unit(x$heights, heights, pos)
  layout <- unclass(x$layout)
  layout$t <- ifelse(layout$t > pos, layout$t + n, layout$t)
  layout$b <- ifelse(layout$b > pos, layout$b + n, layout$b)
  x$layout <- new_data_frame(layout)

  x
}

#' Add new columns in specified position.
#'
#' Insert new columns in a gtable and adjust the grob placement accordingly. If
#' columns are added in the middle of a grob spanning multiple columns, the grob
#' will continue to span them all. If a column is added to the left or right of
#' a grob, the grob will not span the new column(s).
#'
#' @param x a [gtable()] object
#' @param widths a unit vector giving the widths of the new columns
#' @param pos new columns will be added to the right of this position. Defaults
#'   to adding col on right. `0` adds on the left.
#'
#' @return A gtable with the new columns added.
#'
#' @family gtable manipulation
#'
#' @export
#'
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
#'
gtable_add_cols <- function(x, widths, pos = -1) {
  if (!is.gtable(x)) stop("x must be a gtable", call. = FALSE)
  if (length(pos) != 1) stop("pos must be a scalar unit", call. = FALSE)
  n <- length(widths)

  pos <- neg_to_pos(pos, length(x$widths))

  # Shift existing columns right
  x$widths <- insert.unit(x$widths, widths, pos)
  layout <- unclass(x$layout)
  layout$l <- ifelse(layout$l > pos, layout$l + n, layout$l)
  layout$r <- ifelse(layout$r > pos, layout$r + n, layout$r)
  x$layout <- new_data_frame(layout)
  x
}

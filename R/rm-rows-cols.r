#' Remove rows from specified position.
#' 
#' @param x a \code{\link{gtable}} object
#' @param pos numeric or numeric vector. row at specified position(s) will
#'            be removed. Defaults to removing row on bottom.
#' @export
#' @examples
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
gtable_rm_rows <- function(x, pos = -1) {
  stopifnot(is.gtable(x))
  stopifnot(is.numeric(pos))

  # Get the initial number of rows. This number changes with each row
  # removal, but we want to know how many rows there are initially because
  # the rows are specified by their row numbers before anything is removed
  rows <- length(x$heights)

  # Rows don't stay in the same position when you start removing other
  # rows, so keep a record of where other rows move
  new_pos <- seq(1:rows)

  for (p in pos) {
    # Only check to see if the specified row actually exists.
    if (p <= rows && p >= 1)
    {
      # Get the current position of the row
      p <- new_pos[p]
    }

    # If the user specifies row -1, then remove the bottom/last row.
    # TODO: make this part of the function work.
    else if (p == -1) {
      # Get the position of the last row
      p <- new_pos[rows]
    }

    else {
      stop(paste("The specified row,", p, ", does not exist"))
      p <- 0
    }

    if (p >= 0) {
      # Remove the row
      x$heights[p] <- NULL

      # Update the layout to reflect the removal
      x$layout$t <- ifelse(x$layout$t > p, x$layout$t - 1, x$layout$t)
      x$layout$b <- ifelse(x$layout$b > p, x$layout$b - 1, x$layout$b)

      # Update our record of row positions
      new_pos <- ifelse(new_pos > p, new_pos - 1, new_pos)
    }
  }

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



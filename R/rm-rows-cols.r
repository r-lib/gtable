#' Remove rows from specified position.
#' 
#' @param x a \code{\link{gtable}} object
#' @param pos numeric or numeric vector. row at specified position(s) will
#'            be removed. Defaults to removing row on bottom.
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

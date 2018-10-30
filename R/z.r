#' Normalise z values within a gtable object
#'
#' The z values within a gtable object can be any numeric values.
#' This function will change them to integers (starting from 1),
#' preserving the original order.
#'
#' Ties are handled by the `"first"` method: the first occurrence
#' of a value wins.
#'
#' @param x A gtable object
#' @param i The z value to start counting up from (default is 1)
#'
#' @noRd
z_normalise <- function(x, i = 1) {
  x$layout$z <- rank(x$layout$z, ties.method = "first") + i - 1
  x
}


#' Arrange the z values within gtable objects
#'
#' This is usually used before rbinding or cbinding the gtables together.
#' The resulting z values will be normalized.
#'
#' Ties are handled by the `"first"` method: the first occurrence
#' of a value wins.
#'
#' @param gtables A list of gtable objects
#' @param z A numeric vector of relative z values
#'
#' @noRd
z_arrange_gtables <- function(gtables, z) {
  if (length(gtables) != length(z)) {
    stop("'gtables' and 'z' must be the same length")
  }

  # Keep track of largest z value encountered so far
  zmax <- 0
  # Go through each gtable, in the order of z
  for (i in order(z)) {
    # max() gives a warning if zero-length input
    if (nrow(gtables[[i]]$layout) > 0) {
      gtables[[i]] <- z_normalise(gtables[[i]], zmax + 1)
      zmax <- max(gtables[[i]]$layout$z)
    }
  }

  gtables
}

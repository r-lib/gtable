#' Normalize z values within a gtable object
#'
#' The z values within a gtable object can be any numeric values.
#' This function will change them to integers (starting from 1),
#' preserving the original order.
#'
#' Ties are handled by the \code{"first"} method: the first occurrence
#' of a value wins.
#'
#' @param x A gtable object
z_normalize <- function(x) {
  x$layout$z <- rank(x$layout$z, ties.method = "first")
  x
}


#' Arrange the z values within gtable objects
#'
#' This is usually used before rbinding or cbinding the gtables together.
#' The resulting z values will be normalized.
#'
#' Ties are handled by the \code{"first"} method: the first occurrence
#' of a value wins.
#'
#' @param gtables A list of gtable objects
#' @param z A numeric vector of relative z values
z_arrange_gtables <- function(gtables, z) {
  if (length(gtables) != length(z)) {
    stop("'gtables' and 'z' must be the same length")
  }

  # Make sure z is vector of integers starting from 1
  z <- rank(z, ties.method = "first")

  # Keep track of largest z value encountered so far
  zmax <- 0
  # Go through each gtable, in the order of z
  for (i in order(z)) {
    gtables[[i]]$layout$z <- rank(gtables[[i]]$layout$z,
      ties.method = "first") + zmax
    zmax <- max(gtables[[i]]$layout$z)
  }

  gtables
}

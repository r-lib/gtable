#' Row and column binding for gtables.
#'
#' These functions are the parallels of the `matrix`/`data.frame` row and
#' column bindings. As such they work in the same way, except they have to take
#' care of additional attributes within the gtables. Most importantly it needs
#' to take care of the sizing of the final gtable, as the different gtables
#' going in may have different widths or heights. By default it tries to
#' calculate the maximum width/height among the supplied gtables, but other
#' options exists. Further, the relative layering of the grobs in each gtable
#' can be modified or left as-is.
#'
#' @param ... gtables to combine (`x` and `y`)
#' @param size How should the widths (for rbind) and the heights (for cbind)
#'   be combined across the gtables: take values from `first`,
#'   or `last` gtable, or compute the `min` or `max` values.
#'   Defaults to `max`.
#' @param z A numeric vector indicating the relative z values of each gtable.
#'   The z values of each object in the resulting gtable will be modified
#'   to fit this order. If `NULL`, then the z values of obects within
#'   each gtable will not be modified.
#'
#' @return A gtable object
#'
#' @name bind
#'
#' @examples
#' library(grid)
#' a <- rectGrob(gp = gpar(fill = "red"))
#' b <- circleGrob()
#' c <- linesGrob()
#'
#' row <- matrix(list(a, b), nrow = 1)
#' col <- matrix(list(a, b), ncol = 1)
#' mat <- matrix(list(a, b, c, nullGrob()), nrow = 2)
#'
#' row_gt <- gtable_matrix("demo", row, unit(c(1, 1), "null"), unit(1, "null"))
#' col_gt <- gtable_matrix("demo", col, unit(1, "null"), unit(c(1, 1), "null"))
#' mat_gt <- gtable_matrix("demo", mat, unit(c(1, 1), "null"), unit(c(1, 1), "null"))
#'
#' # cbind
#' c_binded <- cbind(mat_gt, col_gt, size = "first")
#' plot(c_binded)
#'
#' # rbind
#' r_binded <- rbind(mat_gt, row_gt, size = "last")
#' plot(r_binded)
#'
#' # Dimensions must match along bind direction
#' try(cbind(mat_gt, row_gt))
#'
NULL

#' @rdname bind
#' @method rbind gtable
#' @export
rbind.gtable <- function(..., size = "max", z = NULL) {
  gtables <- list(...)
  if (!is.null(z)) {
    gtables <- z_arrange_gtables(gtables, z)
  }
  Reduce(function(x, y) rbind_gtable(x, y, size = size), gtables)
}

rbind_gtable <- function(x, y, size = "max") {
  if (length(x$widths) != length(y$widths)) {
    cli::cli_abort("{.arg x} and {.arg y} must have the same number of columns")
  }
  x_row <- length(x$heights)
  y_row <- length(y$heights)
  if (x_row == 0) return(y)
  if (y_row == 0) return(x)

  lay_x <- unclass(x$layout)
  lay_y <- unclass(y$layout)

  x$layout <- new_data_frame(list(
    t = c(lay_x$t, lay_y$t + x_row),
    l = c(lay_x$l, lay_y$l),
    b = c(lay_x$b, lay_y$b + x_row),
    r = c(lay_x$r, lay_y$r),
    z = c(lay_x$z, lay_y$z),
    clip = c(lay_x$clip, lay_y$clip),
    name = c(lay_x$name, lay_y$name)
  ))

  x$heights <- insert.unit(x$heights, y$heights)
  x$rownames <- c(x$rownames, y$rownames)

  size <- match.arg(size, c("first", "last", "max", "min"))
  x$widths <- switch(size,
    first = x$widths,
    last = y$widths,
    min = compare_unit(x$widths, y$widths, pmin),
    max = compare_unit(x$widths, y$widths, pmax)
  )

  x$grobs <- append(x$grobs, y$grobs)

  x
}

#' @rdname bind
#' @method cbind gtable
#' @export
cbind.gtable <- function(..., size = "max", z = NULL) {
  gtables <- list(...)
  if (!is.null(z)) {
    gtables <- z_arrange_gtables(gtables, z)
  }
  Reduce(function(x, y) cbind_gtable(x, y, size = size), gtables)
}

cbind_gtable <- function(x, y, size = "max") {
  if (length(x$heights) != length(y$heights)) {
    cli::cli_abort("{.arg x} and {.arg y} must have the same number of rows")
  }
  x_col <- length(x$widths)
  y_col <- length(y$widths)
  if (x_col == 0) return(y)
  if (y_col == 0) return(x)

  lay_x <- unclass(x$layout)
  lay_y <- unclass(y$layout)

  x$layout <- new_data_frame(list(
    t = c(lay_x$t, lay_y$t),
    l = c(lay_x$l, lay_y$l + x_col),
    b = c(lay_x$b, lay_y$b),
    r = c(lay_x$r, lay_y$r + x_col),
    z = c(lay_x$z, lay_y$z),
    clip = c(lay_x$clip, lay_y$clip),
    name = c(lay_x$name, lay_y$name)
  ))

  x$widths <- insert.unit(x$widths, y$widths)
  x$colnames <- c(x$colnames, y$colnames)

  size <- match.arg(size, c("first", "last", "max", "min"))
  x$heights <- switch(size,
    first = x$heights,
    last = y$heights,
    min = compare_unit(x$heights, y$heights, pmin),
    max = compare_unit(x$heights, y$heights, pmax)
  )

  x$grobs <- append(x$grobs, y$grobs)

  x
}

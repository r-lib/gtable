#' Add a single grob, possibly spanning multiple rows or columns.
#'
#' This only adds grobs into the table - it doesn't affect the table layout in
#' any way.  In the gtable model, grobs always fill up the complete table
#' cell.  If you want custom justification you might need to define the grob
#' dimension in absolute units, or put it into another gtable that can then be
#' added to the gtable instead of the grob.
#'
#' @param x a [gtable()] object
#' @param grobs a single grob or a list of grobs
#' @param t a numeric vector giving the top extent of the grobs
#' @param l a numeric vector giving the left extent of the grobs
#' @param b a numeric vector giving the bottom extent of the grobs
#' @param r a numeric vector giving the right extent of the grobs
#' @param z a numeric vector giving the order in which the grobs should be
#'   plotted.  Use `Inf` (the default) to plot above or `-Inf`
#'   below all existing grobs. By default positions are on the integers,
#'  giving plenty of room to insert new grobs between existing grobs.
#' @param clip should drawing be clipped to the specified cells
#'   (`"on"`), the entire table (`"inherit"`), or not at all
#'   (`"off"`)
#' @param name name of the grob - used to modify the grob name before it's
#'   plotted.
#'
#' @return A gtable object with the new grob(s) added
#'
#' @family gtable manipulation
#'
#' @export
#'
#' @examples
#' library(grid)
#'
#' gt <- gtable(widths = unit(c(1, 1), 'null'), heights = unit(c(1, 1), 'null'))
#' pts <- pointsGrob(x = runif(5), y = runif(5))
#'
#' # Add a grob to a single cell (top-right cell)
#' gt <- gtable_add_grob(gt, pts, t = 1, l = 2)
#'
#' # Add a grob spanning multiple cells
#' gt <- gtable_add_grob(gt, pts, t = 1, l = 1, b = 2)
#'
#' plot(gt)
#'
gtable_add_grob <- function(x, grobs, t, l, b = t, r = l, z = Inf, clip = "on", name = x$name) {
  check_gtable(x)
  if (is.grob(grobs)) grobs <- list(grobs)
  if (!is.list(grobs)) {
    stop_input_type(grobs, "a single grob or a list of grobs")
  }
  n_grobs <- length(grobs)

  if (is.logical(clip)) {
    clip <- ifelse(clip, "on", "off")
  }

  layout <- unclass(x$layout)

  # Check that inputs have the right length
  if (!all(vapply(
    list(t, r, b, l, z, clip, name), len_same_or_1,
    logical(1), n_grobs
  ))) {
    cli::cli_abort("Not all inputs have either length 1 or same length same as {.arg grobs}")
  }

  # If z is just one value, replicate to same length as grobs
  z <- rep(z, length.out = n_grobs)

  # Get the existing z values from x$layout, and new non-Inf z-values
  zval <- c(layout$z, z[!is.infinite(z)])
  if (length(zval) == 0) {
    # If there are no existing finite z values, set these so that
    # -Inf values get assigned ..., -2, -1, 0 and
    # +Inf values get assigned 1, 2, 3, ...
    zmin <- 1
    zmax <- 0
  } else {
    zmin <- min(zval)
    zmax <- max(zval)
  }
  z[z == -Inf] <- zmin - rev(seq_len(sum(z == -Inf)))
  z[z == Inf] <- zmax + seq_len(sum(z == Inf))

  x_row <- length(x$heights)
  x_col <- length(x$widths)

  t <- rep(neg_to_pos(t, x_row), length.out = n_grobs)
  b <- rep(neg_to_pos(b, x_row), length.out = n_grobs)
  l <- rep(neg_to_pos(l, x_col), length.out = n_grobs)
  r <- rep(neg_to_pos(r, x_col), length.out = n_grobs)
  clip <- rep(clip, length.out = n_grobs)
  name <- rep(name, length.out = n_grobs)

  x$grobs <- c(x$grobs, grobs)

  x$layout <- new_data_frame(list(
    t = c(layout$t, t),
    l = c(layout$l, l),
    b = c(layout$b, b),
    r = c(layout$r, r),
    z = c(layout$z, z),
    clip = c(layout$clip, clip),
    name = c(layout$name, name)
  ))

  x
}

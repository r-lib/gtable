#' Add a single grob, possibly spanning multiple rows or columns.
#' 
#' This only adds grobs into the table - it doesn't affect the table in 
#' any way.  In the gtable model, grobs always fill up the complete table
#' cell.  If you want custom justification you might need to 
#' 
#' @param x a \code{\link{gtable}} object
#' @param grobs a single grob or a list of grobs
#' @param t a numeric vector giving the top extent of the grobs
#' @param l a numeric vector giving the left extent of the grobs
#' @param b a numeric vector giving the bottom extent of the grobs
#' @param r a numeric vector giving the right extent of the grobs
#' @param z a numeric vector giving the order in which the grobs should be
#'   plotted.  Use \code{Inf} (the default) to plot above or \code{-Inf}
#'   below all existing grobs. By default positions are on the integers, 
#'  giving plenty of room to insert new grobs between existing grobs.
#' @param clip should drawing be clipped to the specified cells
#'   (\code{"on"}), the entire table (\code{"inherit"}), or not at all 
#'   (\code{"off"})
#' @param name name of the grob - used to modify the grob name before it's
#'   plotted.
#' @export
gtable_add_grob <- function(x, grobs, t, l, b = t, r = l, z = Inf, clip = "on", name = x$name) 
{
  stopifnot(is.gtable(x))
  if (is.grob(grobs)) grobs <- list(grobs)
  stopifnot(is.list(grobs))

  # Check that inputs have the right length
  if(!all(vapply(list(t, r, b, l, z, clip, name), len_same_or_1,
    logical(1), grobs))) {
    stop("Not all inputs have either length 1 or same length same as 'grobs'")
  }

  # If z is just one value, replicate to same length as grobs
  if (length(z) == 1) {
    z <- rep(z, length(grobs))
  }

  # Get the existing z values from x$layout, and new non-Inf z-values
  zval <- c(x$layout$z, z[!is.infinite(z)])
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

  t <- neg_to_pos(t, nrow(x))
  b <- neg_to_pos(b, nrow(x))
  l <- neg_to_pos(l, ncol(x))
  r <- neg_to_pos(r, ncol(x))
  
  layout <- data.frame(t = t, l = l, b = b, r = r, z = z, 
    clip = clip, name = name, 
    stringsAsFactors = FALSE)
  stopifnot(length(grobs) == nrow(layout))
  
  x$grobs <- c(x$grobs, grobs)
  x$layout <- rbind(x$layout, layout)
  
  x
}

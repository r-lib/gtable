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
  
  if (nrow(x$layout) == 0) z <- 1L
  if (z == Inf) z <- max(x$layout$z) + 1L
  if (z == -Inf) z <- min(x$layout$z) - 1L
  
  t <- neg_to_pos(t, nrow(x))
  b <- neg_to_pos(b, nrow(x))
  l <- neg_to_pos(l, ncol(x))
  r <- neg_to_pos(r, ncol(x))
  
  stopifnot(t > 0 && t <= nrow(x))
  stopifnot(b > 0 && b <= nrow(x))
  stopifnot(l > 0 && l <= ncol(x))
  stopifnot(r > 0 && r <= ncol(x))
  
  layout <- data.frame(t = t, l = l, b = b, r = r, z = z, 
    clip = clip, name = name, 
    stringsAsFactors = FALSE)
  stopifnot(length(grobs) == nrow(layout))
  
  x$grobs <- c(x$grobs, grobs)
  x$layout <- rbind(x$layout, layout)
  
  x
}

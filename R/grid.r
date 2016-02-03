#' Visualise the layout of a gtable.
#'
#' @export
#' @param x a gtable object
gtable_show_layout <- function(x) {
  stopifnot(is.gtable(x))

  grid.show.layout(gtable_layout(x))
}

gtable_layout <- function(x) {
  stopifnot(is.gtable(x))

  grid.layout(
    nrow = nrow(x), heights = x$heights,
    ncol = ncol(x), widths = x$widths,
    respect = x$respect
  )
}

vpname <- function(row) {
  paste(row$name, ".", row$t, "-", row$r, "-", row$b, "-", row$l, sep = "")
}

#' @export
widthDetails.gtable <- function(x) absolute.size(gtable_width(x))

#' @export
heightDetails.gtable <- function(x) absolute.size(gtable_height(x))

#' @export
makeContext.gtable <- function(x) {
  layoutvp <- viewport(layout = gtable_layout(x), name = x$name)
  if (is.null(x$vp)) {
    x$vp <- layoutvp
  } else {
    x$vp <- vpStack(x$vp, layoutvp)
  }
  x
}

#' @export
makeContent.gtable <- function(x) {
  children_vps <- mapply(child_vp,
                         vp_name = vpname(x$layout),
                         t = x$layout$t, r = x$layout$r,
                         b = x$layout$b, l = x$layout$l,
                         clip = x$layout$clip,
                         SIMPLIFY = FALSE)
  x$grobs <- mapply(wrap_gtableChild, x$grobs, children_vps,
                    SIMPLIFY = FALSE)
  setChildren(x, do.call("gList", x$grobs[order(x$layout$z)]))
}

#' @export
makeContext.gTableChild <- function(x) {
  if (is.null(x$vp)) {
    x$vp <- x$wrapvp
  } else {
    x$vp <- vpStack(x$wrapvp, x$vp)
  }
  # A gTableChild extends an arbitrary grob class
  # so allow existing makeContext() behaviour of
  # original grob class to still occur
  NextMethod()
}

# Return the viewport for a child grob in a gtable
child_vp <- function(vp_name, t, r, b, l, clip) {
  viewport(name = vp_name, layout.pos.row = t:b,
           layout.pos.col = l:r, clip = clip)
}

# Turn a grob into a gtableChild, and store information about the
# viewport used within the gtable
wrap_gtableChild <- function(grob, vp) {
  grob$wrapvp <- vp
  grob$name <- vp$name
  class(grob) <- c("gTableChild", class(grob))
  grob
}

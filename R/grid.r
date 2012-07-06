#' Visualise the layout of a gtable.
#' 
#' @export
#' @param x a gtable object
#' @importFrom grid grid.show.layout
gtable_show_layout <- function(x) {
  stopifnot(is.gtable(x))

  grid.show.layout(gtable_layout(x))
}


#' @importFrom grid grid.layout
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

gtable_viewport <- function(x) {
  layout_vp <- viewport(layout = gtable_layout(x), name = x$name)
  vp <- function(i) {
    vp <- x$layout[i, ]
    viewport(
      name = vpname(vp), 
      layout.pos.row = vp$t:vp$b, 
      layout.pos.col = vp$l:vp$r, 
      clip = vp$clip
    )
  }
  children_vp <- do.call("vpList", lapply(seq_along(x$grobs), vp))
  vpTree(layout_vp, children_vp)
}

gtable_gList <- function(x) {
  z_order <- order(x$layout$z)
  x$layout <- x$layout[z_order, , drop = FALSE]
  x$grobs <- x$grobs[z_order]
  
  vp_names <- vpname(x$layout)

  classes <- vapply(x$grobs, function(x) class(x)[1], character(1))
  grob_names <- make.unique(paste(vp_names, classes, sep = "."))
  
  grobs <- lapply(seq_along(x$grobs), function(i) {
    editGrob(x$grobs[[i]], vp = vpPath(x$name, vp_names[i]), 
      name = grob_names[i])
  })
  
  do.call("gList", grobs)
}

#' Generate a grob (gTree) to render a gtable.
#' 
#' @param x a \code{\link{gtable}} object
#' @param ... other parameters passed on to \code{\link[grid]{gTree}}
#' @export
gtable_gTree <- function(x, ...) {
  if (length(x) == 0) return(nullGrob())

  children <- gtable_gList(x)
  vp <- gtable_viewport(x)
  gTree(children = children, childrenvp = vp, ...)
}

#' @S3method grid.draw gtable
#' @importFrom grid grid.draw
grid.draw.gtable <- function(x, recording = TRUE) {
  grid.draw(gtable_gTree(x), recording)
}



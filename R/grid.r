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
  paste(row$name, row$t, row$r, row$b, row$l, sep = "-")
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
  names <- vpname(x$layout)

  grobs <- lapply(seq_along(names), function(i) {
    editGrob(x$grobs[[i]], vp = vpPath(x$name, names[i]), 
      name = names[i])
  })
  
  do.call("gList", grobs)
}

gtable_gTree <- function(x, ...) {
  if (length(x) == 0) return(nullGrob())

  children <- gtable_gList(x)
  vp <- gtable_viewport(x)
  gTree(children = children, childrenvp = vp, ...)
}

#' @S3method grid.draw gtable
grid.draw.gtable <- function(x, recording = TRUE) {
  grid.draw(gtable_gTree(x), recording)
}



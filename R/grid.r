
# Combine with other layouts -----------------------------------------------



# Turn into a grid object --------------------------------------------------

gtable_layout <- function(x) {
  grid.layout(
    nrow = nrow(x), heights = x$heights,
    ncol = ncol(x), widths = x$widths,
    respect = x$respect
  )
}

gtable_show_layout <- function(x) {
  grid.show.layout(gtable_layout(x))
}

gtable_viewport <- function(x) {
  layout_vp <- viewport(layout = gtable_layout(x), name = x$name)
  vp <- function(i) {
    vp <- x$layout[i, ]
    viewport(
      name = paste(vp$name, vp$t, vp$l, sep = "-"), 
      layout.pos.row = vp$t:vp$b, 
      layout.pos.col = vp$l:vp$r, 
      clip = vp$clip
    )
  }
  children_vp <- do.call("vpList", llply(seq_along(x$grobs), vp))
  vpTree(layout_vp, children_vp)
}

gtable_gList <- function(x) {
  names <- with(x$layout, paste(name, t, l, sep = "-"))

  grobs <- llply(seq_along(names), function(i) {
    editGrob(x$grobs[[i]], vp = vpPath(x$name, names[i]), 
      name = names[i])
  })
  
  do.call("gList", grobs)
}

gtable_gTree <- function(x, ...) {
  children <- gtable_gList(x)
  vp <- gtable_viewport(x)
  gTree(children = children, childrenvp = vp, ...)
}

#' @S3method grid.draw gtable
grid.draw.gtable <- function(x, recording = TRUE) {
  grid.draw(gtable_gTree(x), recording)
}


compute_grob_widths <- function(grob_layout, widths) {
  cols <- split(grob_layout, grob_layout$l)
  do.call("unit.c", lapply(cols, compute_grob_dimensions, dims = widths))
}  

compute_grob_heights <- function(grob_layout, heights) {
  cols <- split(grob_layout, grob_layout$t)
  do.call("unit.c", lapply(cols, compute_grob_dimensions, dims = heights))
}  

compute_grob_dimensions <- function(grob_layout, dims) {
  # If any don't have explicit dims, then width is NULL
  if (!any(grob_layout$type %in% names(dims))) {
    return(unit(1, "null"))
  }

  grob_layout <- subset(grob_layout, type %in% names(dims))

  dims <- unique(Map(function(type, pos) {
    type_width <- dims[[type]]
    if (length(type_width) == 1) type_width else type_width[pos]
  }, grob_layout$type, grob_layout$id))
  units <- vapply(dims, is.unit, logical(1))

  if (all(units)) {
    if (all(lapply(dims, attr, "unit") == "null")) unit(max(unlist(dims)), "null")
    else do.call("max", dims)
  } else {
    raw_max <- unit(max(unlist(dims[!units])), "cm")
    if (any(units)) {
      unit_max <- max(do.call("unit.c", dims[units]))
      max(raw_max, unit_max)
    }
    else {
      raw_max
    }
  }
}

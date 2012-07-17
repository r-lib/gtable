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

# generate vpTree
#
# For parent, i.e., the gtable itself, the elements of vp are respected,
# and name and layout are added.
#
# For children, if a child has vp, the vp are also respected.
# In this case, a wrapper vp is generated that contains the vp of the child.
# The wrapper and child's vp are stacked by vpStack.
# The wrapper vp has the info of layout.pos.row/col, and it spans entire region
# of the cell of gtable.
# The elements of child's vp is unchanged except for the name/clip.
# The name will be: vpname.gtwrap -> vpname
#
# If a child does not have vp, a new viewport is generated.
# There is no wrapper.
# The name will be: vpaname
#
# *IMPORTANT*
# the order of childrenvp is the order of grob.
# So this function does not care about z-order.
gtable_viewport <- function(x) {
  # respect parent vp with setting name and layout
  if (is.null(x$vp)) {
    layout_vp <- viewport(layout = gtable_layout(x), name = x$name)
  } else {
    layout_vp <- x$vp
  }

  # Convert each row of x$layout to a list item
  layouts <- split(x$layout, seq_len(nrow(x$layout)))

  childvps <- mapply(find_child_vp, x$grobs, layouts, SIMPLIFY = FALSE)

  children_vp <- do.call("vpList", childvps)
  vpTree(layout_vp, children_vp)
}

# Convert list of grobs of gtable into official gList object.
# grobs of gtable, ie., a child can be either official grobs OR gtable.
# If a child is gtable, conversion from gtable to gTree of the child
# takes place here.
#
# Finally, the vp slot of a grob is replaced by vpPath string.
gtable_gList <- function(x) {
  vp <- gtable_viewport(x)

  # reorder along z index
  z_order <- order(x$layout$z)
  x$layout <- x$layout[z_order, , drop = FALSE]
  x$grobs <- x$grobs[z_order]
  vp$children <- vp$children[z_order]

  vp_names <- vpname(x$layout)

  classes <- vapply(x$grobs, function(x) class(x)[1], character(1))
  grob_names <- make.unique(paste(vp_names, classes, sep = "."))

  # Find paths for the children
  vp_child_paths <- find_vp_child_paths(vp)

  grobs <- mapply(editGrob, x$grobs, vp = vp_child_paths, name = grob_names,
    SIMPLIFY = FALSE)

  do.call("gList", grobs)
}


#' @S3method drawDetails gtable
drawDetails.gtable <- function(x, recording = TRUE) {
  # set up a gTree for drawing
  g <- gTree(children = gtable_gList(x), childrenvp = gtable_viewport(x))
  grid.draw(g, recording)
}

#' S3method widthDetails gtable
widthDetails.gtable <- function(x) absolute.size(sum(x$widths))

#' S3method heightDetails gtable
heightDetails.gtable <- function(x) absolute.size(sum(x$heights))


# children vp
#
# If a child already has vp, it will be respected.
# However, we cannot use it directly. Instead, a wrapper vp
# is necessary. vpStack is used for this purpose.
find_child_vp <- function(grob, layout) {
  vp <- grob$vp

  if (is.null(vp)) {
    viewport(name = vpname(layout), layout.pos.row = layout$t:layout$b,
      layout.pos.col = layout$l:layout$r, clip = layout$clip)
  } else {
    vpStack(
      viewport(name = paste0(vpname(layout), ".gtwrap"),
        layout.pos.row = layout$t:layout$b,
        layout.pos.col = layout$l:layout$r),
      viewport(name = vpname(layout),
        x = vp$x, y = vp$y, width = vp$width, height = vp$height,
        just = vp$just, gp = vp$gp, xscale = vp$xscale, yscale = vp$yscale,
        angle = vp$angle, layout = vp$layout, clip = layout$clip))
  }
}

# Return a list of vp paths for the children of vp
# so vpname should be list parent::wrapper::vp
find_vp_child_paths <- function(vp) {
  vp_childpaths <- lapply(vp$children, find_vp_path)

  lapply(vp_childpaths, append_vp_parent_path, vp$parent$name)
}

# If vp is a vpStack, return a list of names of the vp's in the stack
# Otherwise, return the name of the vp (not in a list)
find_vp_path <- function(vp) {
  if (inherits(vp, "vpStack")) {
    # Get the names of each frame in the vpStack
    lapply(vp, function(x) x$name)
  } else {
    vp$name
  }
}

# @param childname A list of strings that specifies the child path
# @param parentname A string that specifies the parent path
append_vp_parent_path <- function (childpath, parentpath) {
  # Make sure that the args are a flat list
  do.call("vpPath", c(list(parentpath), childpath))
}

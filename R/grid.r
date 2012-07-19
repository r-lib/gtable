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
  layout_vp <- viewport(layout = gtable_layout(x), name = x$name)

  children_vps <- mapply(find_child_vp,
    grob = x$grobs, vp_name = vpname(x$layout),
    t = x$layout$t, r = x$layout$r, b = x$layout$b, l = x$layout$l,
    clip = x$layout$clip,
    SIMPLIFY = FALSE)

  vpTree(layout_vp, do.call("vpList", children_vps))
}

# Convert list of grobs of gtable into official gList object.
# grobs of gtable, ie., a child can be either official grobs OR gtable.
# If a child is gtable, conversion from gtable to gTree of the child
# takes place here.
#
# Finally, the vp slot of a grob is replaced by vpPath string.
gtable_gList <- function(x) {

  # reorder along z index
  z_order <- order(x$layout$z)
  x$layout <- x$layout[z_order, , drop = FALSE]
  x$grobs <- x$grobs[z_order]

  vp_names <- vpname(x$layout)

  classes <- vapply(x$grobs, function(x) class(x)[1], character(1))
  grob_names <- make.unique(paste(vp_names, classes, sep = "."))

  vp <- gtable_viewport(x)

  # A function wrapper that reverses arg order, for use with lapply
  stack_vp <- function(cvp, pvp) vpStack(pvp, cvp)
  vps <- lapply(vp$children, stack_vp, vp$parent)

  grobs <- mapply(editGrob, x$grobs, vp = vps, name = grob_names,
    SIMPLIFY = FALSE)

  do.call("gList", grobs)
}


#' @S3method drawDetails gtable
drawDetails.gtable <- function(x, recording = TRUE) {
  # set up a gTree for drawing
  g <- gTree(children = gtable_gList(x))
  grid.draw(g, recording)
}

#' @S3method widthDetails gtable
widthDetails.gtable <- function(x) absolute.size(gtable_width(x))

#' @S3method heightDetails gtable
heightDetails.gtable <- function(x) absolute.size(gtable_height(x))


# Return the viewport for a child grob in a gtable
#
# If a child already has vp, it will be respected.
# However, we cannot use it directly. Instead, a wrapper vp
# is necessary. vpStack is used for this purpose.
# @param grob The child grob
# @param vp_name The name of the viewport for the grob
# @param t Top cell of the grob
# @param r Right cell of the grob
# @param b Bottom cell of the grob
# @param l Left cell of the grob
# @param clip Clip (TRUE or FALSE)
find_child_vp <- function(grob, vp_name, t, r, b, l, clip) {
  vp <- grob$vp

  if (is.null(vp)) {
    viewport(name = vp_name, layout.pos.row = t:b,
      layout.pos.col = l:r, clip = clip)
  } else {
    vpStack(
      viewport(name = paste0(vp_name, ".gtwrap"),
        layout.pos.row = t:b,
        layout.pos.col = l:r),
      viewport(name = vp_name,
        x = vp$x, y = vp$y, width = vp$width, height = vp$height,
        just = vp$just, gp = vp$gp, xscale = vp$xscale, yscale = vp$yscale,
        angle = vp$angle, layout = vp$layout, clip = clip))
  }

}


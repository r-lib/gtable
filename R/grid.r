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

#' @internal
#'
#' generate vpTree
#'
#' For parent, i.e., the gtable itself, the elements of vp are respected,
#' and name and layout are added.
#'
#' For children, if a child has vp, the vp are also respected.
#' In this case, a wrapper vp is generated that contains the vp of the child.
#' The wrapper and child's vp are stacked by vpStack.
#' The wrapper vp has the info of layout.pos.row/col, and it spans entire region
#' of the cell of gtable.
#' The elements of child's vp is unchanged except for the name/clip.
#' The name will be: vpname.gtwrap -> vpname
#'
#' If a child does not have vp, a new viewport is generated.
#' There is no wrapper.
#' The name will be: vpaname
#'
#' *IMPORTANT*
#' the order of childrenvp is the order of grob.
#' So this function does not care about z-order.
#'
#' @param pvp Parent viewport
gtable_viewport <- function(x, pvp = NULL) {
  # respect parent vp with setting name and layout
  if (is.null(pvp)) {
    layout_vp <- viewport(layout = gtable_layout(x), name = x$name)
  } else {
    layout_vp <-
      viewport(layout = gtable_layout(x), name = x$name,
        x = pvp$x, y = pvp$y, width = pvp$width, height = pvp$height,
        just = pvp$just, gp = pvp$gp, xscale = pvp$xscale,
        yscale = pvp$yscale, angle = pvp$angle, clip = pvp$clip)
  }

  # children vp
  #
  # If a child already has vp, it will be respected.
  # However, we cannot use it directly. Instead, a wrapper vp
  # is necessary. vpStack is used for this purpose.
  vp <- function(i) {
    vp <- x$layout[i, ]
    p <- x$grobs[[i]]$vp
    if (!is.null(p)) {
      vpStack(
        viewport(name = paste0(vpname(vp), ".gtwrap"),
          layout.pos.row = vp$t:vp$b, layout.pos.col = vp$l:vp$r),
        viewport(name = vpname(vp),
          x = p$x, y = p$y, width = p$width, height = p$height,
          just = p$just, gp = p$gp, xscale = p$xscale, yscale = p$yscale,
          angle = p$angle, layout = p$layout, clip = vp$clip))
    } else {
      viewport(name = vpname(vp), layout.pos.row = vp$t:vp$b,
        layout.pos.col = vp$l:vp$r, clip = vp$clip)
    }
  }
  children_vp <- do.call("vpList", lapply(seq_along(x$grobs), vp))
  vpTree(layout_vp, children_vp)
}

#' @internal
#'
#' Convert list of grobs of gtable into official gList object.
#' grobs of gtable, ie., a chidl can be either official grobs OR gtable.
#' If a child is gtable, conversion from gtable to gTree of the child
#' takes place here.
#'
#' Finally, th vp slot of a grob is replaced by vpPath string.
gtable_gList <- function(x, vp) {
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

  # convert gtables to gTrees
  x$grobs <- lapply(x$grobs, function(g) {
    if (is.gtable(g)) {
      gtable_gTree(g)
    } else {
      g
    }
  })
  
  grobs <- mapply(editGrob, x$grobs, vp = vp_child_paths, name = grob_names,
    SIMPLIFY = FALSE)

  do.call("gList", grobs)
}

#' Generate a grob (gTree) to render a gtable.
#' 
#' @param x a \code{\link{gtable}} object
#' @param vp viewport object for this grob
#' @param ... other parameters passed on to \code{\link[grid]{gTree}}
#' @export
gtable_gTree <- function(x, vp = NULL, ...) {
  if (length(x) == 0) return(nullGrob())
  if (is.null(vp) && !is.null(x$vp)) vp <- x$vp

  # construct vpTree
  childrenvp <- gtable_viewport(x, vp)
  children <- gtable_gList(x, childrenvp)

  # NOTE
  # the order of the childrenvp$children and
  # that of the children is different, but no problem.
  # Look-up of the vp is based on the text matching between
  # vpPath name of childrenvp$child and vp slot of a children.
  gTree(children = children, childrenvp = childrenvp, ...)
}

#' @S3method grid.draw gtable
grid.draw.gtable <- function(x, recording = TRUE) {
  grid.draw(gtable_gTree(x), recording)
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

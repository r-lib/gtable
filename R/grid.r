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

gtable_viewport <- function(x, pvp = NULL) {
  # respect parent vp with setting name and layout
  if (is.null(pvp)) {
    layout_vp <- viewport(layout = gtable_layout(x), name = x$name)
  } else {
    layout_vp <-
      viewport(layout = gtable_layout(x), name = x$name,
               x=pvp$x,
               y=pvp$y,
               width=pvp$width,
               height=pvp$height,
               just=pvp$just,
               gp=pvp$gp,
               xscale=pvp$xscale,
               yscale=pvp$yscale, 
               angle=pvp$angle,
               clip = pvp$clip)
  }

  # children vp
  #
  # If a child has alrealy vp, it will be repsected.
  # However, we cannot use it directly. Instead, a wrapper vp
  # is necessary. vpStack is used for this purpose.
  vp <- function(i) {
    vp <- x$layout[i, ]
    p <- x$grobs[[i]]$vp
    if (!is.null(p)) {
      vpStack(viewport(name = paste0(vpname(vp), ".frame"),
                       layout.pos.row = vp$t:vp$b, 
                       layout.pos.col = vp$l:vp$r, 
                       ),
              viewport(name = vpname(vp),
                       x=p$x, y=p$y, width=p$width, height=p$height,
                       just=p$just, gp=p$gp, xscale=p$xscale, yscale=p$yscale, 
                       angle=p$angle, layout=p$layout,
                       clip = vp$clip))
    } else {
      viewport(
               name = vpname(vp), 
               layout.pos.row = vp$t:vp$b, 
               layout.pos.col = vp$l:vp$r, 
               clip = vp$clip
               )
    }
  }
  children_vp <- do.call("vpList", lapply(seq_along(x$grobs), vp))
  vpTree(layout_vp, children_vp)
}

gtable_gList <- function(x, vp) {
  z_order <- order(x$layout$z)
  x$layout <- x$layout[z_order, , drop = FALSE]
  x$grobs <- x$grobs[z_order]
  vp$children <- vp$children[z_order]
  
  vp_names <- vpname(x$layout)

  classes <- vapply(x$grobs, function(x) class(x)[1], character(1))
  grob_names <- make.unique(paste(vp_names, classes, sep = "."))
  grobs <- lapply(seq_along(x$grobs), function(i) {
    editGrob(x$grobs[[i]],
             # If a child does not have vp, then there is only one vp
             # Otherwise, the child's vp is vpStack,
             # so vpname should be list parent::wrapper::vp
             vp = do.call("vpPath",
               c(list(vp$parent$name),
                 if (inherits(vp$children[[i]], "vpStack")) lapply(vp$children[[i]], function(x)x$name)
                 else vp$children[[i]]$name)),
             name = grob_names[i])
  })
  
  do.call("gList", grobs)
}

#' Generate a grob (gTree) to render a gtable.
#' 
#' @param x a \code{\link{gtable}} object
#' @param vp viewport object for this grob
#' @param ... other parameters passed on to \code{\link[grid]{gTree}}
#' @export
gtable_gTree <- function(x, vp = NULL, ...) {
  # accept vp param as grobs.
  
  if (length(x) == 0) return(nullGrob())

  cvp <- gtable_viewport(x, vp)
  children <- gtable_gList(x, cvp)
  gTree(children = children, childrenvp = cvp, ...)
}

#' @S3method grid.draw gtable
grid.draw.gtable <- function(x, recording = TRUE) {
  grid.draw(gtable_gTree(x), recording)
}



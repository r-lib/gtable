vcontext("Justification")

# Utility functions
# =====================================================================

# Make an empty frame for use later, with 2x2 grid of 2x2cm squares
gtf <- gtable_matrix("gtf", 
  matrix(rep(list(rectGrob(gp = gpar(fill = "grey95"))), 4), nrow = 2),
  widths  = unit(rep(4, 2), "cm"),
  heights = unit(rep(4, 2), "cm"))

# Make a list of four colored rectGrobs, increasing in size
inc_grobs <- function(...) {
  # List of 4 colored grobs, increasing in size
  grobs <- list()
  for (i in 1:4) {
    grobs[[i]] <- rectGrob(
      width  = unit(i/2, "cm"),
      height = unit(i/2, "cm"),
      gp = gpar(fill = rainbow(4)[i]),
      ...)
  }
  grobs
}

# Make a list of four colored rectGrobs, small and same size
small_grobs <- function() {
  grobs <- list()
  for (i in 1:4) {
    grobs[[i]] <- rectGrob(
      width  = unit(1, "cm"),
      height = unit(1, "cm"),
      gp = gpar(fill = rainbow(4)[i]))
  }
  grobs
}

# Turn a list of grobs into a 2-row gtable
# 'size' is the height/width of each cell, in cm
make_gtable <- function(name, grobs, size = 4) {
  gtable_matrix(name, matrix(grobs, nrow = 2),
    widths  = unit(rep(size, length(grobs)/2), "cm"),
    heights = unit(rep(size, 2), "cm"))
}

# No justification
# =====================================================================

# Make the colored grobs and put them in a gtable
gt <- make_gtable("gt", inc_grobs())

save_vtest2("grobs, no justification", { 
  grid.newpage()
  grid.draw(gtf)
  grid.draw(gt)
})


# Justification by specifying 'just' in grobs
# =====================================================================

# Make the colored grobs with justification
# and put them in a gtable
gt_just <- make_gtable("gt_just", inc_grobs(y = 0, just = "bottom"))

save_vtest2("justification by specifying 'just' in grobs", { 
  grid.newpage()
  grid.draw(gtf)
  grid.draw(gt_just)
})


# Justification by specifying 'vp' in grobs
# =====================================================================

# List of 4 colored grobs, increasing in size
grobs_vp <- list()
for (i in 1:4) {
  grobs_vp[[i]] <- rectGrob(
    width  = unit(i/2, "cm"),
    height = unit(i/2, "cm"),
    gp = gpar(fill = rainbow(4)[i]),
    vp = viewport(y = 0, just = "bottom", height = unit(i/2, "cm")))
}

gt_vp <- make_gtable("gt_vp", grobs_vp)

save_vtest2("justification by specifying 'vp' in grobs", { 
  grid.newpage()
  grid.draw(gtf)
  grid.draw(gt_vp)
})


# Justification by wrapping grobs in gTree and setting 'vp' in gTree
# =====================================================================
grobs_gtvp <- list()
for (i in 1:4) {
  grobs_gtvp[[i]] <- gTree(children = gList(rectGrob(
      width  = unit(i/2, "cm"),
      height = unit(i/2, "cm"),
      gp = gpar(fill = rainbow(4)[i]))),
    vp = viewport(y = 0, just = "bottom", height = unit(i/2, "cm")))
}

gt_gtvp <- make_gtable("gt_gtvp", grobs_gtvp)

save_vtest2("Justification by wrapping grobs in gTree and setting 'vp' in gTree", { 
  grid.newpage()
  grid.draw(gtf)
  grid.draw(gt_gtvp)
})


# gtable in gtable, no justification
# =====================================================================

# Make the smaller gtable
gt_inner <- make_gtable("gt_inner", small_grobs(), size = 1)

# Make the outer wrapper gtable
grobs_outer <- inc_grobs()
# Set fourth grob to inner gtable
grobs_outer[[4]] <- gt_inner

gt_outer <- make_gtable("gt_outer", grobs_outer)

save_vtest2("gtable in gtable, no justification", { 
  grid.newpage()
  grid.draw(gtf)
  grid.draw(gt_outer)
})


# gtable in gtable, justification by specifying 'vp' in inner gtable
# =====================================================================

# Make the smaller gtable
gt_inner_vp <- make_gtable("gt_inner_vp", small_grobs(), size = 1)

gt_inner_vp <- editGrob(gt_inner_vp,
  vp = viewport(y = 0, just = "bottom", height = gtable_height(gt_inner_vp)))

# Make the outer wrapper gtable
grobs_outer_vp <- inc_grobs()
# Set fourth grob to inner gtable
grobs_outer_vp[[4]] <- gt_inner_vp

gt_outer_vp <- make_gtable("grobs_outer_vp", grobs_outer_vp)

save_vtest2("gtable in gtable, justification by specifying 'vp' in inner gtable", { 
  grid.newpage()
  grid.draw(gtf)
  grid.draw(gt_outer_vp)
})

save_vtest2("inner gtable not nested, justification by specifying 'vp'", { 
  grid.newpage()
  grid.draw(gtf)
  grid.draw(gt_inner_vp)
})


# gtable in gtable with text, justification by specifying 'vp' in inner gtable
# =====================================================================

grobs_inner_vptext <- list(
  textGrob("First cell", rot = 90),
  rectGrob(width = unit(1, "cm"), height = unit(1, "cm"),
    gp = gpar(fill = rainbow(4)[3])),
  textGrob("The third cell", rot = 90),
  rectGrob(width = unit(1, "cm"), height = unit(1, "cm"),
    gp = gpar(fill = rainbow(4)[4])))

gt_inner_vptext <- gtable_matrix("gt_inner_vptext", matrix(grobs_inner_vptext, nrow = 2),
  widths = unit(rep(1, 2), "cm"),
  heights = unit.c(max(grobHeight(grobs_inner_vptext[[1]]),
                       grobHeight(grobs_inner_vptext[[3]])),
                   grobHeight(grobs_inner_vptext[[2]])))

gt_inner_vptext <- editGrob(gt_inner_vptext, vp = viewport(y = 0,
  just = "bottom", height = gtable_height(gt_inner_vptext)))


# Make the outer wrapper gtable
grobs_outer_vptext <- inc_grobs()
# Set fourth grob to inner gtable
grobs_outer_vptext[[4]] <- gt_inner_vptext

gt_outer_vptext <- make_gtable("gt_outer_vptext", grobs_outer_vptext)


save_vtest2("gtable in gtable with text, justification by specifying 'vp' in inner gtable", { 
  grid.newpage()
  grid.draw(gtf)
  grid.draw(gt_outer_vptext)
})



end_vcontext()

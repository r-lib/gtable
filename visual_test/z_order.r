vcontext("z-order")

# Utility functions
# =====================================================================

# Make an empty frame for use later, with 2x2 grid of 2x2cm squares
gtf <- gtable_matrix("gtf", 
  matrix(rep(list(circleGrob(gp = gpar(fill = "grey95"))), 4), nrow = 2),
  widths  = unit(rep(4, 2), "cm"),
  heights = unit(rep(4, 2), "cm"))

# Make a list of four colored circleGrobs
circle_grobs <- function() {
  grobs <- list()
  for (i in 1:4) {
    grobs[[i]] <- circleGrob(
      r  = unit(3, "cm"),
      gp = gpar(fill = gray(i/4))
    )
  }
  grobs
}

# Turn a list of grobs into a 2-row gtable
# 'size' is the height/width of each cell, in cm
make_gtable <- function(name, grobs, size = 4) {
  gtable_matrix(name, matrix(grobs, nrow = 2),
    widths  = unit(rep(size, length(grobs)/2), "cm"),
    heights = unit(rep(size, 2), "cm"),
    clip = "off")
}

# No justification
# =====================================================================

# Make the colored grobs and put them in a gtable
gt <- make_gtable("gt", circle_grobs())

save_vtest2("overlapping circles, default z-order (lighter is higher)", {
  grid.newpage()
  grid.draw(gtf)
  grid.draw(gt)
})


gt$layout$z <- c(2, 4, 3, 1)
save_vtest2("overlapping circles, z-order 2 4 3 1", {
  grid.newpage()
  grid.draw(gtf)
  grid.draw(gt)
})

end_vcontext()

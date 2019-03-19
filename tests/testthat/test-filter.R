context("filter")

gt <- gtable(widths = unit(1, "null"), heights = unit(rep(1, 4), "null"))
gt <- gtable_add_grob(
  gt,
  list(circleGrob(), rectGrob(), polygonGrob(), linesGrob()),
  t = 1:4,
  l = 1,
  name = c('circle', 'rect', 'polygon', 'lines')
)

test_that("filtering works", {
  gt_fil <- gtable_filter(gt, 'circle')
  expect_equal(gt_fil$layout$name, "circle")
  gt_fil <- gtable_filter(gt, 'circle', invert = TRUE)
  expect_equal(gt_fil$layout$name, c("rect", "polygon", "lines"))
  gt_fil <- gtable_filter(gt, '(circle)|(rect)')
  expect_equal(gt_fil$layout$name, c("circle", "rect"))
  gt_fil <- gtable_filter(gt, '(circle)|(rect)', fixed = TRUE, trim = FALSE)
  expect_length(gt_fil, 0)
})

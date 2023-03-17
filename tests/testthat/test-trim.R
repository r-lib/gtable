gt_empty <- gtable(
  widths = unit(rep(1, 4), 'null'),
  heights = unit(rep(1, 4), 'null')
)
gt <- gtable_add_grob(gt_empty, rectGrob(), 1, 1)

test_that("trimming works", {
  expect_equal(dim(gtable_trim(gt)), c(1, 1))
  expect_equal(dim(gtable_trim(gt_empty)), c(0, 0))
})

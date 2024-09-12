test_that("as.gtable sensibly converts objects", {

  # gtable --> gtable is a no-op
  g1 <- gtable(unit(1, "npc"), unit(1, "npc"))
  g2 <- circleGrob(r = unit(1, "cm"))

  expect_identical(as.gtable(g1), g1)

  test <- as.gtable(g2)
  expect_s3_class(test, "gtable")
  expect_equal(as.numeric(convertUnit(gtable_width(test), "cm")), 2)
  expect_equal(as.numeric(convertUnit(gtable_height(test), "cm")), 2)

  expect_warning(
    as.gtable(g2, widths = unit(c(1, 1), "cm")),
    "truncated to length 1"
  )
  expect_warning(
    as.gtable(g2, heights = unit(c(1, 1), "cm")),
    "truncated to length 1"
  )
  expect_snapshot_error(as.gtable(1:5))
  expect_snapshot_error(as.gtable(g1, foo = "bar"))
})

context("Dimensions")

test_that("nrow_ and ncol_ gives equal result to nrow and ncol", {
  base <- gtable(unit(rep(1, 5), "null"), unit(rep(1, 3), "null"))

  expect_equal(nrow(base), nrow_(base))
  expect_equal(ncol(base), ncol_(base))
})

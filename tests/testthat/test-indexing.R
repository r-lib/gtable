context("indexing")

base <- gtable(unit(rep(1, 3), "null"), unit(rep(1, 3), "null"))

test_that("indexing errors are caught", {
  expect_error(base[2:1,])
  expect_error(base[c(2,2), ])
  expect_error(base[, 2:1])
  expect_error(base[, c(1,1)])

  expect_silent(base[1:2, 1:2])
})

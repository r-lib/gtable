context("Subsetting")

base <- gtable(unit(rep(1, 3), "null"), unit(rep(1, 3), "null"))

test_that("dimensions correct after subsetting", {
  expect_equal(dim(base[, ]), c(3, 3))
  expect_equal(dim(base[1:3, 1:3]), c(3, 3))
  expect_equal(dim(base[T, T]), c(3, 3))

  expect_equal(dim(base[1, 1]), c(1, 1))
  expect_equal(dim(base[c(T, F, F), c(T, F, F)]), c(1, 1))
  expect_equal(dim(base[-(2:3), -(2:3)]), c(1, 1))

  expect_equal(dim(base[1:2, 2:3]), c(2, 2))
})

rect <- rectGrob()
mid <- gtable_add_grob(base, rect, 2, 2)
row <- gtable_add_grob(base, rect, 2, l = 1, r = 3)
col <- gtable_add_grob(base, rect, 2, t = 1, b = 3)

tlbr <- function(x) unname(unlist(x$layout[c("t", "l", "b", "r")]))

test_that("grobs moved to correct location", {

  expect_equal(tlbr(mid[2, 2]),     c(1, 1, 1, 1))
  expect_equal(tlbr(mid[2:3, 2:3]), c(1, 1, 1, 1))

  expect_equal(tlbr(mid[1:2, 1:2]), c(2, 2, 2, 2))
  expect_equal(tlbr(mid[1:3, 1:3]), c(2, 2, 2, 2))  
})

test_that("spanning grobs kept if ends kept", {
  
  expect_equal(length(row[, -2]), 1)
  expect_equal(tlbr(row[, -2]), c(2, 1, 2, 2))
  
  expect_equal(length(col[-2, ]), 1)
  expect_equal(tlbr(col[-2, ]), c(1, 2, 2, 2))

  expect_equal(length(row[, 1]), 0)
  expect_equal(length(col[1, ]), 0)
  
})

test_that("new_data_frame returns a data.frame of expected dimensions", {
  df <- new_data_frame(list(x = 1:3, y = c("a", "b", "c")))

  expect_s3_class(df, "data.frame")
  expect_equal(nrow(df), 3)
  expect_equal(ncol(df), 2)
  expect_named(df, c("x", "y"))
})

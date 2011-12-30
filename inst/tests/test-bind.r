context("Bind")

test_that("Number of rows grow with rbind", {
  
  lay1 <- gtable_add_rows(gtable(), cm)
  lay2 <- gtable_add_rows(gtable(), rep(cm, 2))
  
  expect_that(nrow(rbind(lay1, lay2)), equals(3))
  expect_that(nrow(rbind(lay2, lay1)), equals(3))
})

test_that("Number of cols grow with cbind", {

  lay1 <- gtable_add_cols(gtable(), cm)
  lay2 <- gtable_add_cols(gtable(), rep(cm, 2))
  
  expect_that(ncol(cbind(lay1, lay2)), equals(3))
  expect_that(ncol(cbind(lay2, lay1)), equals(3))
})

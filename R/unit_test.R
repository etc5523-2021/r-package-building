source("R/discrete-scale.R", chdir = TRUE)
library(testthat)

test_that("direction", {
  expect_equal(mountain_palette()(2), c("#b5bb7c", "#f9ca9a"))
})

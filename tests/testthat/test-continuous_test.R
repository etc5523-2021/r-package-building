test_that("continuous", {
  expect_error(scale_colour_mountain_seq_c("red"), "red does not exist in this palette")
})

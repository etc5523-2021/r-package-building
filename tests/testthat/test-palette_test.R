test_that("palette", {
  expect_equal(mountain_palette()(2), c("#b5bb7c", "#f9ca9a"))
  expect_equal(mountain_palette(direction = -1)(2), c("#f9ca9a", "#b5bb7c"))
  expect_error(mountain_palette(primary = "orange")(2))
  expect_warning(mountain_palette()(10), "The values have exceeded the number of colours in the palette")
})

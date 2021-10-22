library(ggplot2)
library(palmerpenguins)

plot <- ggplot(data = penguins)
test_that("discrete", {
  expect_true(is.ggplot(plot +
                geom_point(aes(x = body_mass_g, y = flipper_length_mm, color = species)) +
                  scale_colour_mountain_d()))
  expect_error(plot +
                 geom_point(aes(x = body_mass_g, y = flipper_length_mm, color = species)) +
                 scale_colour_mountain_d(primary = "orange"))
  expect_error(plot +
                 geom_point(aes(x = body_mass_g, y = flipper_length_mm, color = species)) +
                 scale_color_mountain_d(other = "orange"))
  expect_true(is.ggplot(plot +
                          geom_point(aes(x = body_mass_g, y = flipper_length_mm, color = species)) +
                          scale_color_mountain_d()))
  expect_error(plot +
                 geom_point(aes(x = body_mass_g, y = flipper_length_mm, color = species)) +
                 scale_color_mountain_d(primary = "orange"))
  expect_error(plot +
                 geom_point(aes(x = body_mass_g, y = flipper_length_mm, color = species)) +
                 scale_color_mountain_d(other = "orange"))
  expect_error(plot +
                 geom_point(aes(x = body_mass_g, y = flipper_length_mm, fill = Petal.Width)) +
                 scale_fill_mountain_d(primary = "orange"))
  expect_error(plot +
                 geom_point(aes(x = body_mass_g, y = flipper_length_mm, fill = Petal.Width)) +
                 scale_fill_mountain_d(other = "orange"))
})

library(ggplot2)
library(palmerpenguins)

plot <- ggplot(data = penguins)
test_that("discrete", {
  expect_true(is.ggplot(plot +
                geom_point(aes(x = body_mass_g, y = flipper_length_mm, color = species)) +
                scale_colour_mountain_seq_c()))
})

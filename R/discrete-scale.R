scale_colour_mountain_d <- function(
  primary = "navajowhite",
  other = "darkkhaki",
  direction = 1,
  ...
) {
  ggplot2::discrete_scale(
    "colour", "mountain",
    mountain_palette(primary, other, direction),
    ...
  )
}

scale_color_mountain_d <- scale_colour_mountain_d



scale_fill_mountain_d <- function(
  primary = "antiquewhite",
  other = "steelblue",
  direction = 1,
  ...
) {
  ggplot2::discrete_scale(
    "fill", "mountain",
    mountain_palette (primary, other, direction),
    ...
  )
}

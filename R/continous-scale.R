# This is where functions for your continous scale go
library(colorspace)
scale_colour_mountain_seq_c <- function(name = "darkkhaki", direction = 1, amount = 0.5, ...) {
  # check that name is in your palette
  # throw an error if it isn't
  if (!name %in% names(mountain_colours)){
    stop("Colour does not exist in palette")
  }
  # set the low colour
  low = mountain_colours[[name]]
  # set the high colour with colorspace pkg
  high = lighten(mountain_colours[[name]], amount = amount, space = "combined", fixup = TRUE)
  # if direction is < 0 switch high and low
  if (direction < 0){
    temp = low
    low = high
    high = temp
  }
  # pass everything on to ggplot2 color gradient
  ggplot2::scale_color_gradient(
    ...,
    low = low,
    high = high,
    na.value = "black",
    aesthetics = "colour"
  )
}

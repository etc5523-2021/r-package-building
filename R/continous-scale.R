
#' Continuous Scale for color from the mountain palette
#'
#' @param name The name of the colour from the palette, the default colour is darkkhaki.
#' @param direction If the value is greater than or equal to 0 then lighter colours correspond to higher values. Otherwise lighter colours will correspond to lower values
#' @param amount The luminance of the colour chosen will change according to the value given. If value is negative then it will make the scale more darker.
#' @param ... Other parameters that support the scale_fill_continuous function
#'
#' @return A ggplot2 object containing the scaled colours
#' @examples
#' scale_colour_mountain_seq_c()
#' scale_colour_mountain_seq_c(name = "silver", direction = -1, amount = -0.7)
#' @rdname scale_colour_mountain_seq_c
#' @export scale_colour_mountain_seq_c
scale_colour_mountain_seq_c <- function(name = "darkkhaki", direction = 1, amount = 0.5, ...) {
  if (!name %in% names(mountain_colours)){
    stop(paste(name, "does not exist in this palette"))
  }

  low = mountain_colours[[name]]

  high = colorspace::lighten(mountain_colours[[name]], amount = amount, space = "combined", fixup = TRUE)

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

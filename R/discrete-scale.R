#' Discrete Scale for color from the mountain palette
#'
#' @param primary The primary colour in the palette which is navajowhite, other colours from the palette can also be given
#' @param other In case there are only 2 colours to be chosen then, this colour will be used. It is darkkhaki
#' @param direction If value of direction is 0 or greater than 0, then the colours will be in the order: navajowhite, lightsteelblue, silver, lightpink, sandybrown, darkkhaki. If it is less than 1 then the direction will be reversed.
#' @param ... Other parameters that support the scale_fill_discrete function
#'
#' @return A ggplot2 object containing the scaled colours
#' @examples
#' scale_colour_mountain_d()
#' scale_colour_mountain_d(primary = "silver", direction = -1)
#' @rdname scale_colour_mountain_d
#' @export scale_colour_mountain_d
scale_colour_mountain_d <- function(
  primary = "navajowhite",
  other = "darkkhaki",
  direction = 1,
  ...
) {
  stopifnot(primary %in% names(mountain_colours))
  stopifnot(other %in% names(mountain_colours))

  ggplot2::discrete_scale(
    "colour", "mountain",
    mountain_palette(primary, other, direction),
    ...
  )
}
#' Scale Colors Discrete
#' @param primary The primary colour in the palette which is navajowhite, other colours from the palette can also be given
#' @param other In case there are only 2 colours to be chosen then, this colour will be used. It is darkkhaki
#' @param direction If value of direction is 0 or greater than 0, then the colours will be in the order: navajowhite, lightsteelblue, silver, lightpink, sandybrown, darkkhaki. If it is less than 1 then the direction will be reversed.
#' @param ... Other parameters that support the scale_fill_discrete function
#'
#' @return A ggplot2 object containing the scaled colours
#' @examples
#' scale_color_mountain_d()
#' @rdname scale_color_mountain_d
#' @export scale_color_mountain_d
scale_color_mountain_d <- scale_colour_mountain_d



#' Discrete Scale for color from the mountain palette
#'
#' @param primary The primary colour in the palette which is navajowhite, other colours from the palette can also be given
#' @param other In case there are only 2 colours to be chosen then, this colour will be used. It is darkkhaki
#' @param direction If value of direction is 0 or greater than 0, then the colours will be in the order: navajowhite, lightsteelblue, silver, lightpink, sandybrown, darkkhaki. If it is less than 1 then the direction will be reversed.
#' @param ... Other parameters that support the scale_fill_discrete function
#' @return A ggplot2 object containing the scaled colours
#' @examples
#' scale_fill_mountain_d()
#' scale_fill_mountain_d(primary = "silver", direction = -1)
#' @rdname scale_fill_mountain_d
#' @export scale_fill_mountain_d
scale_fill_mountain_d <- function(
  primary = "navajowhite",
  other = "darkkhaki",
  direction = 1,
  ...
) {
  stopifnot(primary %in% names(mountain_colours))
  stopifnot(other %in% names(mountain_colours))
  ggplot2::discrete_scale(
    "fill", "mountain",
    mountain_palette(primary, other, direction),
    ...
  )
}

#' Mountain Colours
#' @examples
#' mountain_colours
#' @rdname mountain_colours
#' @export mountain_colours
mountain_colours <- list(
  "navajowhite" = "#f9ca9a",
  "lightsteelblue" = "#9ecfc4",
  "silver" = "#c4d7bf",
  "lightpink" = "#fdafa3",
  "sandybrown" = "#f3d14d",
  "darkkhaki" = "#b5bb7c"
)

#' Mountain Palette
#'
#' @param primary The primary colour in the palette which is navajowhite
#' @param other In case there are only 2 colours to be chosen then, this colour will be used. It is darkkhaki
#' @param direction If value of direction is 0 or greater than 0, then the colours will be in the order: navajowhite, lightsteelblue, silver, lightpink, sandybrown, darkkhaki. If it is less than 1 then the direction will be reversed.
#'
#' @return The color list with n number of colours where n is the parameter passed
#' @examples
#' mountain_palette()(3)
#' mountain_palette("lightsteelblue", "lightpink", -1)(2)
#' @rdname mountain_palette
#' @export mountain_palette
mountain_palette <- function(
  primary = "navajowhite",
  other = "darkkhaki",
  direction = 1
) {
  stopifnot(primary %in% names(mountain_colours))

  function(n) {
    if (n > 6) warning("The values have exceeded the number of colours in the palette")

    if (n == 2) {
      other <- if (!other %in% names(mountain_colours)) {
        other
      } else {
        mountain_colours[other]
      }
      color_list <- c(other, mountain_colours[primary])
    } else {
      color_list <- mountain_colours[1:n]
    }

    color_list <- unname(unlist(color_list))
    if (direction >= 0) color_list else rev(color_list)
  }
}

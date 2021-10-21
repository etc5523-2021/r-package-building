# Define colour palette variables and functions here

mountain_colours <- list(
  # add your colours as a named list here, i.e.
  "navajowhite" = "#f9ca9a",
  "lightsteelblue" = "#9ecfc4",
  "silver" = "#c4d7bf",
  "lightpink" = "#fdafa3",
  "sandybrown" = "#f3d14d",
  "darkkhaki" = "#b5bb7c"
)

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

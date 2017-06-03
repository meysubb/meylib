#' Rotate's X axis
#'
#' This function just loads the theme specification for ggplot2 to rotate the x-axis
#' @param angle Angle at which text should be rotated
#' @keywords Rotate axis label
#' @export
#' @examples
#' rotate_x_xis()
rotate_x_axis <- function(ang){
  require(ggplot2)
  theme(axis.text.x = element_text(angle = ang, hjust = 1))
}

#' Rotate's Y axis
#'
#' This function just loads the theme specification for ggplot2 to rotate the y-axis
#' @param angle Angle at which text should be rotated
#' @keywords Rotate axis label
#' @export
#' @examples
#' rotate_y_xis()
rotate_y_axis <- function(ang){
  require(ggplot2)
  theme(axis.text.y = element_text(angle = ang, hjust = 1))
}
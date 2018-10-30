#' Add padding around edges of table.
#'
#' @param x a [gtable()] object
#' @param padding vector of length 4: top, right, bottom, left.  Normal
#'  recycling rules apply.
#' @export
#' @examples
#' library(grid)
#' gt <- gtable(unit(1, "null"), unit(1, "null"))
#' gt <- gtable_add_grob(gt, rectGrob(gp = gpar(fill = "black")), 1, 1)
#'
#' plot(gt)
#' plot(cbind(gt, gt))
#' plot(rbind(gt, gt))
#'
#' pad <- gtable_add_padding(gt, unit(1, "cm"))
#' plot(pad)
#' plot(cbind(pad, pad))
#' plot(rbind(pad, pad))
gtable_add_padding <- function(x, padding) {
  padding <- rep(padding, length.out = 4)

  x <- gtable_add_rows(x, pos = 0, heights = padding[1])
  x <- gtable_add_cols(x, pos = -1, widths = padding[2])
  x <- gtable_add_rows(x, pos = -1, heights = padding[3])
  x <- gtable_add_cols(x, pos = 0, widths = padding[4])
  x
}

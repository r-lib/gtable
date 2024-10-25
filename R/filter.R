#' Filter cells by name
#'
#' Normally a gtable is considered a matrix when indexing so that indexing is
#' working on the cell layout and not on the grobs it contains. `gtable_filter`
#' allows you to subset the grobs by name and optionally remove rows or columns
#' if left empty after the subsetting
#'
#' @param x a gtable object
#' @inheritParams base::grepl
#' @param trim if `TRUE`, [gtable_trim()] will be used to trim
#'   off any empty cells.
#' @param invert Should the filtering be inverted so that cells matching
#'   `pattern` is removed instead of kept.
#'
#' @return A gtable only containing the matching grobs, potentially stripped of
#' empty columns and rows
#'
#' @family gtable manipulation
#'
#' @export
#'
#' @examples
#' library(grid)
#' gt <- gtable(unit(rep(5, 3), c("cm")), unit(5, "cm"))
#' rect <- rectGrob(gp = gpar(fill = "black"))
#' circ <- circleGrob(gp = gpar(fill = "red"))
#'
#' gt <- gtable_add_grob(gt, rect, 1, 1, name = "rect")
#' gt <- gtable_add_grob(gt, circ, 1, 3, name = "circ")
#'
#' plot(gtable_filter(gt, "rect"))
#' plot(gtable_filter(gt, "rect", trim = FALSE))
#' plot(gtable_filter(gt, "circ"))
#' plot(gtable_filter(gt, "circ", trim = FALSE))
#'
gtable_filter <- function(x, pattern, fixed = FALSE, trim = TRUE, invert = FALSE) {
  matches <- grepl(pattern, .subset2(x$layout, "name"), fixed = fixed)
  if (invert) matches <- !matches
  x$layout <- x$layout[matches, , drop = FALSE]
  x$grobs <- x$grobs[matches]

  if (trim) x <- gtable_trim(x)

  x
}

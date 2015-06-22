#' Filter cells by name.
#'
#' @param x a gtable object
#' @inheritParams base::grepl
#' @param trim if \code{TRUE}, \code{\link{gtable_trim}} will be used to trim
#'   off any empty cells.
#' @export
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
gtable_filter <- function(x, pattern, fixed = FALSE, trim = TRUE) {

  matches <- grepl(pattern, x$layout$name, fixed = fixed)
  x$layout <- x$layout[matches, , drop = FALSE]
  x$grobs <- x$grobs[matches]

  if (trim) x <- gtable_trim(x)

  x
}

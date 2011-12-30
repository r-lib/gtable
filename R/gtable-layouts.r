#' Create a single column gtable.
#'
#' @inheritParams gtable
#' @export
#' @examples
#' a <- rectGrob(gp = gpar(fill = "red"))
#' b <- circleGrob()
#' c <- linesGrob()
#' gt <- gtable_col("demo", list(a, b, c))
#' gt
#' plot(gt)
#' gtable_show_layout(gt)
gtable_col <- function(name, grobs, width = NULL, heights = NULL) {
  width <- width %||% unit(max(unlist(lapply(grobs, width_cm))), "cm")
  heights <- heights %||% rep(unit(1, "null"), length(grobs))

  table <- gtable(name = name)
  
  table <- gtable_add_rows(table, heights)
  table <- gtable_add_cols(table, width)
  table <- gtable_add_grob(table, grobs, t = seq_along(grobs), l = 1, 
    clip = "off")
  
  table
}

#' Create a single row gtable.
#'
#' @inheritParams gtable
#' @export
#' @examples
#' a <- rectGrob(gp = gpar(fill = "red"))
#' b <- circleGrob()
#' c <- linesGrob()
#' gt <- gtable_row("demo", list(a, b, c))
#' gt
#' plot(gt)
#' gtable_show_layout(gt)
gtable_row <- function(name, grobs, height = NULL, widths = NULL) {
  height <- height %||% unit(max(unlist(lapply(grobs, height_cm))), "cm")
  widths <- widths %||% rep(unit(1, "null"), length(grobs))
    
  table <- gtable(name = name)

  table <- gtable_add_cols(table, widths)
  table <- gtable_add_rows(table, height)
  table <- gtable_add_grob(table, grobs, l = seq_along(grobs), t = 1, clip = "off")
  
  table
}

#' Create a gtable from a matrix of grobs.
#'
#' @export
#' @inheritParams gtable
#' @examples
#' a <- rectGrob(gp = gpar(fill = "red"))
#' b <- circleGrob()
#' c <- linesGrob()
#' 
#' row <- matrix(list(a, b, c), nrow = 1)
#' col <- matrix(list(a, b, c), ncol = 1)
#' mat <- matrix(list(a, b, c, nullGrob()), nrow = 2)
#'
#' gtable_matrix("demo", row, unit(c(1, 1, 1), "null"), unit(1, "null"))
#' gtable_matrix("demo", col, unit(1, "null"), unit(c(1, 1, 1), "null"))
#' gtable_matrix("demo", mat, unit(c(1, 1), "null"), unit(c(1, 1), "null"))
gtable_matrix <- function(name, grobs, widths = NULL, heights = NULL, respect = FALSE, clip = "on") {  
  table <- gtable(name = name, respect = respect)

  stopifnot(length(widths) == ncol(grobs))
  stopifnot(length(heights) == nrow(grobs))

  table <- gtable_add_cols(table, widths)
  table <- gtable_add_rows(table, heights)
  
  table <- gtable_add_grob(table, grobs, t = c(row(grobs)), l = c(col(grobs)),
    clip = clip)

  table
}

#' Create a row spacer gtable.
#'
#' @export
gtable_row_spacer <- function(widths) {
  gtable_add_cols(gtable(), widths)
}

#' Create a column spacer gtable.
#'
#' @export
gtable_col_spacer <- function(heights) {
  gtable_add_rows(gtable(), heights)
}

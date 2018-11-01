#' Create a single column gtable.
#'
#' @inheritParams gtable
#' @inheritParams gtable_add_grob
#' @param width a unit vector giving the width of this column
#' @param vp a grid viewport object (or NULL).
#' @export
#' @examples
#' library(grid)
#' a <- rectGrob(gp = gpar(fill = "red"))
#' b <- circleGrob()
#' c <- linesGrob()
#' gt <- gtable_col("demo", list(a, b, c))
#' gt
#' plot(gt)
#' gtable_show_layout(gt)
gtable_col <- function(name, grobs, width = NULL, heights = NULL,
                       z = NULL, vp = NULL) {
  width <- width %||% unit(max(unlist(lapply(grobs, width_cm))), "cm")
  heights <- heights %||% rep(unit(1, "null"), length(grobs))

  # z is either NULL, or a vector of the same length as grobs
  if (!(is.null(z) || length(z) == length(grobs))) stop("z must be either NULL or the same length as grobs", call. = FALSE)
  if (is.null(z)) {
    z <- Inf
  }

  table <- gtable(name = name, vp = vp)

  table <- gtable_add_rows(table, heights)
  table <- gtable_add_cols(table, width)
  table <- gtable_add_grob(table, grobs,
    t = seq_along(grobs), l = 1,
    z = z, clip = "off"
  )

  table
}

#' Create a single row gtable.
#'
#' @inheritParams gtable
#' @inheritParams gtable_add_grob
#' @param height a unit vector giving the height of this row
#' @param vp a grid viewport object (or NULL).
#' @export
#' @examples
#' library(grid)
#' a <- rectGrob(gp = gpar(fill = "red"))
#' b <- circleGrob()
#' c <- linesGrob()
#' gt <- gtable_row("demo", list(a, b, c))
#' gt
#' plot(gt)
#' gtable_show_layout(gt)
gtable_row <- function(name, grobs, height = NULL, widths = NULL,
                       z = NULL, vp = NULL) {
  height <- height %||% unit(max(unlist(lapply(grobs, height_cm))), "cm")
  widths <- widths %||% rep(unit(1, "null"), length(grobs))

  # z is either NULL, or a vector of the same length as grobs
  if (!(is.null(z) || length(z) == length(grobs))) stop("z must be either NULL or the same length as grobs", call. = FALSE)
  if (is.null(z)) {
    z <- Inf
  }

  table <- gtable(name = name, vp = vp)

  table <- gtable_add_cols(table, widths)
  table <- gtable_add_rows(table, height)
  table <- gtable_add_grob(table, grobs,
    l = seq_along(grobs), t = 1,
    z = z, clip = "off"
  )

  table
}

#' Create a gtable from a matrix of grobs.
#'
#' @export
#' @inheritParams gtable
#' @inheritParams gtable_add_grob
#' @param z a numeric matrix of the same dimensions as `grobs`,
#'   specifying the order that the grobs are drawn.
#' @param vp a grid viewport object (or NULL).
#' @examples
#' library(grid)
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
#'
#' # Can specify z ordering
#' z <- matrix(c(3, 1, 2, 4), nrow = 2)
#' gtable_matrix("demo", mat, unit(c(1, 1), "null"), unit(c(1, 1), "null"), z = z)
gtable_matrix <- function(name, grobs, widths = NULL, heights = NULL,
                          z = NULL, respect = FALSE, clip = "on", vp = NULL) {
  table <- gtable(name = name, respect = respect, vp = vp)

  if (length(widths) != ncol(grobs)) stop("width must be the same as the number of columns in grob", call. = FALSE)
  if (length(heights) != nrow(grobs)) stop("height must be the same as the number of rows in grob", call. = FALSE)
  # z is either NULL or a matrix of the same dimensions as grobs
  if (!(is.null(z) || identical(dim(grobs), dim(z)))) stop("z must be either NULL or have the same dimensions as grobs", call. = FALSE)
  if (is.null(z)) {
    z <- Inf
  }

  table <- gtable_add_cols(table, widths)
  table <- gtable_add_rows(table, heights)

  table <- gtable_add_grob(table, grobs,
    t = c(row(grobs)), l = c(col(grobs)),
    z = as.vector(z), clip = clip
  )

  table
}

#' Create a row/col spacer gtable.
#'
#' @name gtable_spacer
NULL

#' @param widths unit vector of widths
#' @rdname gtable_spacer
#' @export
gtable_row_spacer <- function(widths) {
  gtable_add_cols(gtable(), widths)
}

#' @param heights unit vector of heights
#' @rdname gtable_spacer
#' @export
gtable_col_spacer <- function(heights) {
  gtable_add_rows(gtable(), heights)
}

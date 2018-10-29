# Code does not currently work - need to thinking about how indexing a gtable
# should work in more detail.  How do the grobs move around?

#  Join two gtables together based on row/column names.
#
#  @inheritParams gtable_align
#  @param along dimension to align along, \code{1} = rows, \code{2} = cols.
#    Join will occur perpendicular to this direction.
#  @examples
#  rect <- rectGrob(gp = gpar(fill = "black"))
#  circ <- circleGrob(gp = gpar(fill = "red"))
#  a <- gtable_col("a", list(rect, circ), width = unit(5, "cm"))
#  rownames(a) <- c("top", "mid")
#  b <- gtable_col("b", list(circ, rect), width = unit(5, "cm"))
#  rownames(b) <- c("mid", "bot")
#
#  # Commented out example below because it causes R CMD check to fail
#  # when this function is not exported. Uncomment when this function
#  # is fixed and exported again.
#  # gtable_join(a, b)
gtable_join <- function(x, y, along = 1L, join = "left") {
  aligned <- gtable_align(x, y, along = along, join = join)
  switch(along,
    cbind(aligned$x, aligned$y),
    rbind(aligned$x, aligned$y),
    stop("along > 2 no implemented")
  )
}

#  Align two gtables based on their row/col names.
#
#  @param x \code{\link{gtable}}
#  @param y \code{\link{gtable}}
#  @param along dimension to align along, \code{1} = rows, \code{2} = cols.
#  @param join when x and y have different names, how should the difference
#    be resolved? \code{inner} keep names that appear in both, \code{outer}
#    keep names that appear in either, \code{left} keep names from \code{x},
#    and \code{right} keep names from \code{y}.
#  @seealso \code{\link{gtable_join}} to return the two gtables combined
#    in to a single gtable.
#  @return a list with elements \code{x} and \code{y} corresponding to the
#    input gtables with extra rows/columns so that they now align.
gtable_align <- function(x, y, along = 1L, join = "left") {
  join <- match.arg(join, c("left", "right", "inner", "outer"))

  names_x <- dimnames(x)[[along]]
  names_y <- dimnames(y)[[along]]

  if (is.null(names_x) || is.null(names_y)) {
    stop("Both gtables must have names along dimension to be aligned")
  }

  idx <- switch(join,
    left = names_x,
    right = names_y,
    inner = intersect(names_x, names_y),
    outer = union(names_x, names_y)
  )

  list(
    x = gtable_reindex(x, idx, along),
    y = gtable_reindex(y, idx, along)
  )
}

#  Reindex a gtable.
#
#  @keywords internal
#  @examples
#  gt <- gtable(heights = unit(rep(1, 3), "cm"), rownames = c("a", "b", "c"))
#  rownames(gtable:::gtable_reindex(gt, c("a", "b", "c")))
#  rownames(gtable:::gtable_reindex(gt, c("a", "b")))
#  rownames(gtable:::gtable_reindex(gt, c("a")))
#  rownames(gtable:::gtable_reindex(gt, c("a", "d", "e")))
gtable_reindex <- function(x, index, along = 1) {
  stopifnot(is.character(index))
  if (length(dim(x)) > 2L || along > 2L) {
    stop("reindex only supports 2d objects")
  }
  old_index <- switch(along, rownames(x), colnames(x))
  stopifnot(!is.null(old_index))

  if (identical(index, old_index)) {
    return(x)
  }

  if (!(old_index %contains% index)) {
    missing <- setdiff(index, old_index)
    # Create and add dummy space rows

    if (along == 1L) {
      spacer <- gtable(
        widths = unit(rep(0, ncol(x)), "cm"),
        heights = rep_along(unit(0, "cm"), missing),
        rownames = missing
      )
      x <- rbind(x, spacer, size = "first")
    } else if (along == 2L) {
      spacer <- gtable(
        heights = unit(rep(0, nrow(x)), "cm"),
        widths = rep_along(unit(0, "cm"), missing),
        colnames = missing
      )

      x <- cbind(x, spacer, size = "first")
    }
  }


  # Reorder & subset

  switch(along,
    x[index, ],
    x[, index]
  )
}

"%contains%" <- function(x, y) all(y %in% x)

rep_along <- function(x, y) {
  if (length(y) == 0) return(NULL)
  rep(x, length(y))
}

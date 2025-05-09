#' Create a new grob table.
#'
#' A grob table captures all the information needed to layout grobs in a table
#' structure. It supports row and column spanning, offers some tools to
#' automatically figure out the correct dimensions, and makes it easy to
#' align and combine multiple tables.
#'
#' Each grob is put in its own viewport - grobs in the same location are
#' not combined into one cell. Each grob takes up the entire cell viewport
#' so justification control is not available.
#'
#' It constructs both the viewports and the gTree needed to display the table.
#'
#' @section Components:
#'
#' There are three basics components to a grob table: the specification of
#' table (cell heights and widths), the layout (for each grob, its position,
#' name and other settings), and global parameters.
#'
#' It's easier to understand how `gtable` works if in your head you keep
#' the table separate from it's contents.  Each cell can have 0, 1, or many
#' grobs inside. Each grob must belong to at least one cell, but can span
#' across many cells.
#'
#' @section Layout:
#'
#' The layout details are stored in a data frame with one row for each grob,
#' and columns:
#'
#' \itemize{
#'   \item `t` top extent of grob
#'   \item `r` right extent of grob
#'   \item `b` bottom extent of
#'   \item `l` left extent of grob
#'   \item `z` the z-order of the grob - used to reorder the grobs
#'     before they are rendered
#'   \item `clip` a string, specifying how the grob should be clipped:
#'     either `"on"`, `"off"` or `"inherit"`
#'   \item `name`, a character vector used to name each grob and its
#'     viewport
#' }
#'
#' You should not need to modify this data frame directly - instead use
#' functions like `gtable_add_grob`.
#'
#' @param widths a unit vector giving the width of each column
#' @param heights a unit vector giving the height of each row
#' @param respect a logical vector of length 1: should the aspect ratio of
#'   height and width specified in null units be respected.  See
#'   [grid.layout()] for more details
#' @param name a string giving the name of the table. This is used to name
#'   the layout viewport
#' @param rownames,colnames character vectors of row and column names, used
#'   for characteric subsetting.
#' @param vp a grid viewport object (or NULL).
#'
#' @return A gtable object
#'
#' @family gtable construction
#'
#' @export
#'
#' @examples
#' library(grid)
#' a <- gtable(unit(1:3, c("cm")), unit(5, "cm"))
#' a
#' gtable_show_layout(a)
#'
#' # Add a grob:
#' rect <- rectGrob(gp = gpar(fill = "black"))
#' a <- gtable_add_grob(a, rect, 1, 1)
#' a
#' plot(a)
#'
#' # gtables behave like matrices:
#' dim(a)
#' t(a)
#' plot(t(a))
#'
#' # when subsetting, grobs are retained if their extents lie in the
#' # rows/columns that retained.
#'
#' b <- gtable(unit(c(2, 2, 2), "cm"), unit(c(2, 2, 2), "cm"))
#' b <- gtable_add_grob(b, rect, 2, 2)
#' b[1, ]
#' b[, 1]
#' b[2, 2]
#'
#' # gtable have row and column names
#' rownames(b) <- 1:3
#' rownames(b)[2] <- 200
#' colnames(b) <- letters[1:3]
#' dimnames(b)
gtable <- function(
  widths = list(),
  heights = list(),
  respect = FALSE,
  name = "layout",
  rownames = NULL,
  colnames = NULL,
  vp = NULL
) {
  if (length(widths) > 0) {
    check_unit(widths)
    if (!(is.null(colnames) || length(colnames == length(widths)))) {
      cli::cli_abort(
        "{.arg colnames} must either be NULL or have the same length as {.arg widths}"
      )
    }
  }
  if (length(heights) > 0) {
    check_unit(heights)
    if (!(is.null(rownames) || length(rownames == length(heights)))) {
      cli::cli_abort(
        "{.arg rownames} must either be NULL or have the same length as {.arg heights}"
      )
    }
  }

  layout <- new_data_frame(
    list(
      t = numeric(),
      l = numeric(),
      b = numeric(),
      r = numeric(),
      z = numeric(),
      clip = character(),
      name = character()
    ),
    n = 0
  )

  if (!is.null(vp)) {
    vp <- viewport(
      name = name,
      x = vp$x,
      y = vp$y,
      width = vp$width,
      height = vp$height,
      just = vp$justification,
      gp = vp$gp,
      xscale = vp$xscale,
      yscale = vp$yscale,
      angle = vp$angle,
      clip = vp$clip
    )
  }

  gTree(
    grobs = list(),
    layout = layout,
    widths = widths,
    heights = heights,
    respect = respect,
    name = name,
    rownames = rownames,
    colnames = colnames,
    vp = vp,
    cl = "gtable"
  )
}

#' Print a gtable object
#'
#' @param x A gtable object.
#' @param zsort Sort by z values? Default `FALSE`.
#' @param ... Other arguments (not used by this method).
#' @export
#' @method print gtable
print.gtable <- function(x, zsort = FALSE, ...) {
  cat(
    "TableGrob (",
    length(x$heights),
    " x ",
    length(x$widths),
    ") \"",
    x$name,
    "\": ",
    length(x$grobs),
    " grobs\n",
    sep = ""
  )

  if (nrow(x$layout) == 0) return()

  pos <- as.data.frame(
    format(as.matrix(x$layout[c("t", "r", "b", "l")])),
    stringsAsFactors = FALSE
  )
  grobNames <- vapply(x$grobs, as.character, character(1))

  info <- data.frame(
    z = x$layout$z,
    cells = paste(
      "(",
      pos$t,
      "-",
      pos$b,
      ",",
      pos$l,
      "-",
      pos$r,
      ")",
      sep = ""
    ),
    name = x$layout$name,
    grob = grobNames
  )
  if (zsort) info <- info[order(x$layout$z), ]

  print(info)
}


#' @export
dim.gtable <- function(x) c(length(x$heights), length(x$widths))

#' @export
dimnames.gtable <- function(x, ...) list(x$rownames, x$colnames)

#' @export
"dimnames<-.gtable" <- function(x, value) {
  x$rownames <- value[[1]]
  x$colnames <- value[[2]]

  if (anyDuplicated(x$rownames)) {
    cli::cli_abort("rownames must be distinct")
  }
  if (anyDuplicated(x$colnames)) {
    cli::cli_abort("colnames must be distinct")
  }

  x
}

#' @export
plot.gtable <- function(x, bg = NULL, grill = NULL, ...) {
  grid.newpage()
  if (!is.null(bg)) {
    grid.rect(gp = gpar(fill = bg))
  }
  if (!is.null(grill)) {
    grid <- seq(0, 1, length.out = 20)
    grid.grill(h = grid, v = grid, gp = gpar(col = grill))
  }
  grid.draw(x)
}

#' Is this a gtable?
#'
#' @param x object to test
#' @export
is.gtable <- function(x) {
  inherits(x, "gtable")
}

#' @export
t.gtable <- function(x) {
  new <- x
  layout <- unclass(x$layout)
  old_lay <- layout

  layout$t <- old_lay$l
  layout$r <- old_lay$b
  layout$b <- old_lay$r
  layout$l <- old_lay$t

  new$layout <- new_data_frame(layout)
  new$widths <- x$heights
  new$heights <- x$widths

  new
}

#' @export
"[.gtable" <- function(x, i, j) {
  # Convert indicies to (named) numeric
  rows <- stats::setNames(seq_along(x$heights), rownames(x))[i]
  cols <- stats::setNames(seq_along(x$widths), colnames(x))[j]

  rows_cur <- stats::na.omit(rows)
  cols_cur <- stats::na.omit(cols)

  if (
    (length(rows) > 1 && any(diff(rows_cur) < 1)) ||
      (length(cols) > 1 && any(diff(cols_cur) < 1))
  ) {
    cli::cli_abort(
      "{.arg i} and {.arg j} must be increasing sequences of numbers"
    )
  }

  i <- seq_along(x$heights) %in% seq_along(x$heights)[rows_cur]
  j <- seq_along(x$widths) %in% seq_along(x$widths)[cols_cur]

  x$heights <- x$heights[rows_cur]
  x$rownames <- x$rownames[rows_cur]
  x$widths <- x$widths[cols_cur]
  x$colnames <- x$colnames[cols_cur]

  layout <- unclass(x$layout)

  keep <- layout$t %in%
    rows_cur &
    layout$b %in% rows_cur &
    layout$l %in% cols_cur &
    layout$r %in% cols_cur
  x$grobs <- x$grobs[keep]

  adj_rows <- cumsum(!stats::na.omit(i))
  adj_cols <- cumsum(!stats::na.omit(j))

  layout$r <- layout$r - adj_cols[layout$r]
  layout$l <- layout$l - adj_cols[layout$l]
  layout$t <- layout$t - adj_rows[layout$t]
  layout$b <- layout$b - adj_rows[layout$b]

  # Drop the unused rows from layout
  x$layout <- new_data_frame(layout)[keep, ]

  if (anyNA(rows)) {
    for (i in which(is.na(rows))) {
      x <- gtable_add_rows(x, unit(0, "mm"), i - 1)
    }
  }
  if (anyNA(cols)) {
    for (i in which(is.na(cols))) {
      x <- gtable_add_cols(x, unit(0, "mm"), i - 1)
    }
  }
  x
}

#' @export
length.gtable <- function(x) length(x$grobs)

#' Returns the height of a gtable, in the gtable's units
#'
#' Note that unlike heightDetails.gtable, this can return relative units.
#'
#' @param x A gtable object
#' @export
gtable_height <- function(x) sum(x$heights)

#' Returns the width of a gtable, in the gtable's units
#'
#' Note that unlike widthDetails.gtable, this can return relative units.
#'
#' @param x A gtable object
#' @export
gtable_width <- function(x) sum(x$widths)

#' Convert to a gtable
#'
#' @param x An object to convert.
#' @param ... Arguments forwarded to methods.
#'
#' @return A gtable object
#' @export
as.gtable <- function(x, ...) {
  check_dots_used()
  UseMethod("as.gtable")
}

#' @export
as.gtable.default <- function(x, ...) {
  cli::cli_abort("Can't convert {.obj_type_friendly {x}} to a {.cls gtable}.")
}

#' @export
as.gtable.gtable <- function(x, ...) x

#' @export
#' @describeIn as.gtable Creates a 1-cell gtable containing the grob.
#' @param widths,heights Scalar unit setting the size of the table. Defaults
#'   to [grid::grobWidth()] and [grid::grobHeight()] of `x` respectively.
as.gtable.grob <- function(x, widths = NULL, heights = NULL, ...) {
  if (length(widths) > 1) {
    widths <- widths[1]
    cli::cli_warn("{.arg widths} truncated to length 1.")
  }
  if (length(heights) > 1) {
    heights <- heights[1]
    cli::cli_warn("{.arg heights} truncated to length 1.")
  }
  table <- gtable(
    widths = widths %||% grobWidth(x),
    heights = heights %||% grobHeight(x)
  )
  gtable_add_grob(table, x, t = 1L, l = 1L, b = 1L, r = 1L, ...)
}

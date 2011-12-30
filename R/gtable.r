#' Create a new table grid.
#'
#' A table grid captures all the information needed to layout grobs in a table
#' structure. It supports row and column spanning, and offers some tools to
#' automatically figure out correct dimensions.
#'
#' Each grob is put in its own viewport - grobs in the same location are 
#' not combined into one cell. Each grob takes up the entire cell viewport
#' so justification control is not available.
#'
#' It constructs both the viewports and the gTree needed to display the table.
#'
#' @param grobs a list of grobs
#' @param layout a data frame with one row for each grob, and columns
#'   \code{t}, \code{r}, \code{b}, \code{l} giving top, right, bottom and left
#'   positions respectively, \code{clip} a string, either \code{"on"},
#'   \code{"off"} or \code{"inherit"}, and \code{name}, a character
#'   vector used to name each grob as it is plotted.
#' @param widths a unit vector giving the width of each column
#' @param height a unit vector giving the height of each row
#' @param respect a logical vector of length 1: should the aspect ratio of 
#'   height and width specified in null units be respected.  See
#'   \code{\link{grid.layout}} for more details
#' @param name a string giving the name of the table. This is used to name
#'   the layout viewport
#' @export
#' @seealso \code{\link{gtable_row}}, \code{\link{gtable_col}} and
#'   \code{\link{gtable_matrix}} for convenient ways of creating gtables.
gtable <- function(grobs = list(), layout = NULL, widths = list(), heights = list(), respect = FALSE, name = "layout") {
  
  if (is.null(layout)) {
    layout <- data.frame(
      t = numeric(), r = numeric(), b = numeric(), l = numeric(), 
      clip = character(), name = character(), stringsAsFactors = FALSE)
  }
  
  stopifnot(length(grobs) == nrow(layout))
  
  structure(list(
    grobs = grobs, layout = layout, widths = widths, 
    heights = heights, respect = respect, name = name), 
    class = "gtable")
}


#' @S3method print gtable
print.gtable <- function(x, ...) {
  cat("TableGrob (", nrow(x), " x ", ncol(x), ") \"", x$name, "\": ", 
    length(x$grobs), " grobs\n", sep = "")
  
  pos <- as.data.frame(format(as.matrix(x$layout[c("t", "r", "b", "l")])), 
    stringsAsFactors = FALSE)
  grobNames <- vapply(x$grobs, as.character, character(1))
    
  cat(paste("  (", pos$l, "-", pos$r, ",", pos$t, "-", pos$b, ") ",
    x$layout$name, ": ", grobNames, sep = "", collapse = "\n"), "\n")  
}


#' @S3method dim gtable
dim.gtable <- function(x) c(length(x$heights), length(x$widths))

#' @S3method plot gtable
plot.gtable <- function(x) {
  grid.newpage()
  grid.draw(x)
}

#' Is this a gtable?
#' 
#' @param x object to test
#' @export
is.gtable <- function(x) {
  inherits(x, "gtable")
}
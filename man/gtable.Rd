\name{gtable}
\alias{gtable}
\title{Create a new grob table.}
\usage{
  gtable(widths = list(), heights = list(),
    respect = FALSE, name = "layout", rownames = NULL,
    colnames = NULL)
}
\arguments{
  \item{grobs}{a list of grobs}

  \item{widths}{a unit vector giving the width of each
  column}

  \item{height}{a unit vector giving the height of each
  row}

  \item{respect}{a logical vector of length 1: should the
  aspect ratio of height and width specified in null units
  be respected.  See \code{\link{grid.layout}} for more
  details}

  \item{name}{a string giving the name of the table. This
  is used to name the layout viewport}
}
\description{
  A table grid captures all the information needed to
  layout grobs in a table structure. It supports row and
  column spanning, and offers some tools to automatically
  figure out correct dimensions.
}
\details{
  Each grob is put in its own viewport - grobs in the same
  location are not combined into one cell. Each grob takes
  up the entire cell viewport so justification control is
  not available.

  It constructs both the viewports and the gTree needed to
  display the table.
}
\section{Components}{
  There are three basics components to a grob table: the
  specification of table (cell heights and widths), the
  layout (for each grob, its position, name and other
  settings), and global parameters.

  It's easier to understand how \code{gtable} works if in
  your head you keep the table separate from it's contents.
  Each cell can have 0, 1, or many grobs inside. Each grob
  must belong to at least one cell, but can span accross
  many cells.
}

\section{Layout}{
  The layout details are stored in a data frame with one
  row for each grob, and columns:

  \itemize{ \item \code{t} top extent of grob \item
  \code{r} right extent of grob \item \code{b} bottom
  extent of \item \code{l} left extent of grob \item
  \code{z} the z-order of the grob - used to reorder the
  grobs before they are rendered \item \code{clip} a
  string, specifying how the grob should be clipped: either
  \code{"on"}, \code{"off"} or \code{"inherit"} \item
  \code{name}, a character vector used to name each grob
  and its viewport }

  You should not need to modify this data frame directly -
  instead use functions like \code{gtable_add_grob}.
}
\examples{
a <- gtable(unit(1:3, c("cm")), unit(5, "cm"))
a
gtable_show_layout(a)

# Add a grob:
rect <- rectGrob(gp = gpar(fill = "black"))
a <- gtable_add_grob(a, rect, 1, 1)
a
plot(a)

# gtables behave like matrices:
dim(a)
t(a)
plot(t(a))

# when subsetting, grobs are retained in their extends lie in the
# rows/columns that retained.

b <- gtable(unit(c(2, 2, 2), "cm"), unit(c(2, 2, 2), "cm"))
b <- gtable_add_grob(b, rect, 2, 2)
b[1, ]
b[, 1]

# gtable have row and column names
rownames(b) <- 1:3
rownames(b)[2] <- 200
colnames(b) <- letters[1:3]
dimnames(b)
}
\seealso{
  \code{\link{gtable_row}}, \code{\link{gtable_col}} and
  \code{\link{gtable_matrix}} for convenient ways of
  creating gtables.
}


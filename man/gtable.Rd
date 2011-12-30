\name{gtable}
\alias{gtable}
\title{Create a new grob table.}
\usage{
  gtable(widths = list(), heights = list(),
    respect = FALSE, name = "layout")
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
\section{Layout}{
  The layout details are stored in a data frame with one
  row for each grob, and columns:

  \itemize{ \item \code{t} top extent of grob \item
  \code{r} right extent of grob \item \code{b} bottom
  extent of \item \code{l} left extent of grob \item
  \code{clip} a string, specifying how the grob should be
  clipped: either \code{"on"}, \code{"off"} or
  \code{"inherit"} \item \code{name}, a character vector
  used to name each grob and its viewport }

  You should not need to modify this data frame directly -
  instead use functions like \code{gtable_add_grob}.
}
\examples{
a <- gtable(unit(1:3, c("cm")), unit(5, "cm"))
a
gtable_show_layout(a)

# Add a grob:
a <- gtable_add_grob(a, rectGrob(gp = gpar(fill = "grey50")), 1, 1)
a
plot(a)
}
\seealso{
  \code{\link{gtable_row}}, \code{\link{gtable_col}} and
  \code{\link{gtable_matrix}} for convenient ways of
  creating gtables.
}


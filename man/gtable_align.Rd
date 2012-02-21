\name{gtable_align}
\alias{gtable_align}
\title{Align two gtables based on their row/col names}
\usage{
  gtable_align(x, y, along = 1L, join = "left")
}
\arguments{
  \item{x}{\code{\link{gtable}}}

  \item{y}{\code{\link{gtable}}}

  \item{along}{dimension to align along, \code{1} = rows,
  \code{2} = cols.}

  \item{join}{when x and y have different names, how should
  the difference be resolved? \code{inner} keep names that
  appear in both, \code{outer} keep names that appear in
  either, \code{left} keep names from \code{x}, and
  \code{right} keep names from \code{y}.}
}
\value{
  a list with elements \code{x} and \code{y} corresponding
  to the input gtables with extra rows/columns so that they
  now align.
}
\description{
  Align two gtables based on their row/col names
}
\seealso{
  \code{\link{gtable_join}} to return the two gtables
  combined in to a single gtable.
}


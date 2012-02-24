\name{gtable_join}
\alias{gtable_join}
\title{Join two gtable together based on row/column names.}
\usage{
  gtable_join(x, y, along = 1L, join = "left")
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
\description{
  Join two gtable together based on row/column names.
}


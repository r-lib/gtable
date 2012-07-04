\name{gtable_join}
\alias{gtable_join}
\title{Join two gtables together based on row/column names.}
\usage{
  gtable_join(x, y, along = 1L, join = "left")
}
\arguments{
  \item{along}{dimension to align along, \code{1} = rows,
  \code{2} = cols.  Join will occur perpendicular to this
  direction.}

  \item{x}{\code{\link{gtable}}}

  \item{y}{\code{\link{gtable}}}

  \item{join}{when x and y have different names, how should
  the difference be resolved? \code{inner} keep names that
  appear in both, \code{outer} keep names that appear in
  either, \code{left} keep names from \code{x}, and
  \code{right} keep names from \code{y}.}
}
\description{
  Join two gtables together based on row/column names.
}
\examples{
rect <- rectGrob(gp = gpar(fill = "black"))
circ <- circleGrob(gp = gpar(fill = "red"))
a <- gtable_col("a", list(rect, circ), width = unit(5, "cm"))
rownames(a) <- c("top", "mid")
b <- gtable_col("b", list(circ, rect), width = unit(5, "cm"))
rownames(b) <- c("mid", "bot")

# Commented out example below because it causes R CMD check to fail
# when this function is not exported. Uncomment when this function
# is fixed and exported again.
# gtable_join(a, b)
}


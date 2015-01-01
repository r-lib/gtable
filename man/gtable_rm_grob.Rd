\name{gtable_rm_grob}
\alias{gtable_rm_grob}
\title{Remove grobs by names and/or by grobs.}
\usage{
  gtable_rm_grob(x, names = NULL, grobs = NULL)
}
\arguments{
  \item{x}{a gtable object}

  \item{names}{a character vector of name(s), as specified in \code{\link{gtable_add_grob}} or \code{x$layout$name}. Multiple names can be specified.}

  \item{grobs}{a single \code{\link{grob}} or a list of \code{\link{grob}s}. Multiple \code{\link{grob}s} can be specified}
}
\description{
  Removes grobs from the table without altering the rest of the table in any way.
}
\examples{
gt <- gtable(unit(rep(5, 3), c("cm")), unit(5, "cm"))
rect <- rectGrob(gp = gpar(fill = "black"))
circ <- circleGrob(gp = gpar(fill = "red"))

gt <- gtable_add_grob(gt, rect, 1, 1, name = "rect")
gt <- gtable_add_grob(gt, circ, 1, 3, name = "circ")

# Multiple ways to remove grobs. Names and grobs can also be specified
# in combination:
gtable_rm_grob(gt, names = "circ")
gtable_rm_grob(gt, names = c("circ", "rect"))
gtable_rm_grob(gt, grobs = list(rect, circ))
gtable_rm_grob(gt, grobs = gt$grobs[[1]])
}


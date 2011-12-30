\name{gtable_add_grob}
\alias{gtable_add_grob}
\title{Add a single grob, possibly spanning multiple rows or columns.}
\usage{
  gtable_add_grob(x, grobs, t, l, b = t, r = l,
    clip = "on", name = x$name)
}
\arguments{
  \item{grobs}{a single grob or a list of grobs}

  \item{clip}{should drawing be clipped to the specified
  cells (\code{"on"}), the entire table (\code{"inherit"}),
  or not at all (\code{"off"})}
}
\description{
  Does not affect height/width
}


\name{gtable_add_grob}
\alias{gtable_add_grob}
\title{Add a single grob, possibly spanning multiple rows or columns.}
\usage{
  gtable_add_grob(x, grobs, t, l, b = t, r = l, z = 1,
    clip = "on", name = x$name)
}
\arguments{
  \item{x}{a \code{\link{gtable}} object}

  \item{grobs}{a single grob or a list of grobs}

  \item{t}{a numeric vector giving the top extent of the
  grobs}

  \item{l}{a numeric vector giving the left extent of the
  grobs}

  \item{b}{a numeric vector giving the bottom extent of the
  grobs}

  \item{r}{a numeric vector giving the right extent of the
  grobs}

  \item{z}{a numeric vector giving the order in which the
  grobs should be plotted}

  \item{clip}{should drawing be clipped to the specified
  cells (\code{"on"}), the entire table (\code{"inherit"}),
  or not at all (\code{"off"})}

  \item{name}{name of the grob - used to modify the grob
  name before it's plotted.}
}
\description{
  Does not affect height/width
}


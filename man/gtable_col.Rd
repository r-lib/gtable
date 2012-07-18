\name{gtable_col}
\alias{gtable_col}
\title{Create a single column gtable.}
\usage{
  gtable_col(name, grobs, width = NULL, heights = NULL,
    z = NULL, vp = NULL)
}
\arguments{
  \item{width}{a unit vector giving the width of this
  column}

  \item{vp}{a grid viewport object (or NULL).}

  \item{name}{a string giving the name of the table. This
  is used to name the layout viewport}

  \item{heights}{a unit vector giving the height of each
  row}

  \item{grobs}{a single grob or a list of grobs}

  \item{z}{a numeric vector giving the order in which the
  grobs should be plotted.  Use \code{Inf} (the default) to
  plot above or \code{-Inf} below all existing grobs. By
  default positions are on the integers, giving plenty of
  room to insert new grobs between existing grobs.}
}
\description{
  Create a single column gtable.
}
\examples{
a <- rectGrob(gp = gpar(fill = "red"))
b <- circleGrob()
c <- linesGrob()
gt <- gtable_col("demo", list(a, b, c))
gt
plot(gt)
gtable_show_layout(gt)
}


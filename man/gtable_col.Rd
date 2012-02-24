\name{gtable_col}
\alias{gtable_col}
\title{Create a single column gtable.}
\usage{
  gtable_col(name, grobs, width = NULL, heights = NULL)
}
\arguments{
  \item{width}{a unit vector giving the width of this
  column}

  \item{name}{a string giving the name of the table. This
  is used to name the layout viewport}

  \item{heights}{a unit vector giving the height of each
  row}

  \item{grobs}{a single grob or a list of grobs}
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


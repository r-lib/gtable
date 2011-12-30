\name{gtable_row}
\alias{gtable_row}
\title{Create a single row gtable.}
\usage{
  gtable_row(name, grobs, height = NULL, widths = NULL)
}
\arguments{
  \item{name}{a string giving the name of the table. This
  is used to name the layout viewport}

  \item{grobs}{a list of grobs}

  \item{height}{a unit vector giving the height of each
  row}

  \item{widths}{a unit vector giving the width of each
  column}
}
\description{
  Create a single row gtable.
}
\examples{
a <- rectGrob(gp = gpar(fill = "red"))
b <- circleGrob()
c <- linesGrob()
gt <- gtable_row("demo", list(a, b, c))
gt
plot(gt)
gtable_show_layout(gt)
}


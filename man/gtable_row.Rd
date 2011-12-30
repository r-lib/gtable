\name{gtable_row}
\alias{gtable_row}
\title{Create a single row gtable.}
\usage{
  gtable_row(name, grobs, height = NULL, widths = NULL)
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


% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/add-rows-cols.R
\name{gtable_add_cols}
\alias{gtable_add_cols}
\title{Add new columns in specified position.}
\usage{
gtable_add_cols(x, widths, pos = -1)
}
\arguments{
\item{x}{a \code{\link[=gtable]{gtable()}} object}

\item{widths}{a unit vector giving the widths of the new columns}

\item{pos}{new columns will be added to the right of this position. Defaults
to adding col on right. \code{0} adds on the left.}
}
\value{
A gtable with the new columns added.
}
\description{
Insert new columns in a gtable and adjust the grob placement accordingly. If
columns are added in the middle of a grob spanning multiple columns, the grob
will continue to span them all. If a column is added to the left or right of
a grob, the grob will not span the new column(s).
}
\examples{
library(grid)
rect <- rectGrob(gp = gpar(fill = "#00000080"))
tab <- gtable(unit(rep(1, 3), "null"), unit(rep(1, 3), "null"))
tab <- gtable_add_grob(tab, rect, t = 1, l = 1, r = 3)
tab <- gtable_add_grob(tab, rect, t = 1, b = 3, l = 1)
tab <- gtable_add_grob(tab, rect, t = 1, b = 3, l = 3)
dim(tab)
plot(tab)

# Grobs will continue to span over new rows if added in the middle
tab2 <- gtable_add_cols(tab, unit(1, "null"), 1)
dim(tab2)
plot(tab2)

# But not when added to left (0) or right (-1, the default)
tab3 <- gtable_add_cols(tab, unit(1, "null"))
tab3 <- gtable_add_cols(tab3, unit(1, "null"), 0)
dim(tab3)
plot(tab3)

}
\seealso{
Other gtable manipulation: 
\code{\link{gtable_add_grob}()},
\code{\link{gtable_add_padding}()},
\code{\link{gtable_add_rows}()},
\code{\link{gtable_add_space}},
\code{\link{gtable_filter}()}
}
\concept{gtable manipulation}

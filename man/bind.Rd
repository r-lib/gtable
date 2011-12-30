\name{bind}
\alias{bind}
\alias{cbind.gtable}
\title{Row and column binding for gtables.}
\usage{
  \method{rbind}{gtable} (..., size = "max")

  \method{cbind}{gtable} (..., size = "max")
}
\arguments{
  \item{...}{gtables to combine (\code{x} and \code{y})}

  \item{size}{How should the widths (for rbind) and the
  heights (for cbind) be combined across the gtables: take
  values from \code{first}, or \code{last} gtable, or
  compute the \code{min} or \code{max} values.  Defaults to
  \code{max}.}
}
\description{
  Row and column binding for gtables.
}


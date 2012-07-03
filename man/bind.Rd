\name{bind}
\alias{bind}
\alias{cbind.gtable}
\alias{rbind.gtable}
\title{Row and column binding for gtables.}
\usage{
  \method{rbind}{gtable} (..., size = "max", z = NULL)

  \method{cbind}{gtable} (..., size = "max", z = NULL)
}
\arguments{
  \item{...}{gtables to combine (\code{x} and \code{y})}

  \item{size}{How should the widths (for rbind) and the
  heights (for cbind) be combined across the gtables: take
  values from \code{first}, or \code{last} gtable, or
  compute the \code{min} or \code{max} values.  Defaults to
  \code{max}.}

  \item{z}{A numeric vector indicating the relative z
  values of each gtable.  The z values of each object in
  the resulting gtable will be modified to fit this order.
  If \code{NULL}, then the z values of obects within each
  gtable will not be modified.}
}
\description{
  Row and column binding for gtables.
}


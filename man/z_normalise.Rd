\name{z_normalise}
\alias{z_normalise}
\title{Normalise z values within a gtable object}
\usage{
  z_normalise(x, i = 1)
}
\arguments{
  \item{x}{A gtable object}

  \item{i}{The z value to start counting up from (default
  is 1)}
}
\description{
  The z values within a gtable object can be any numeric
  values. This function will change them to integers
  (starting from 1), preserving the original order.
}
\details{
  Ties are handled by the \code{"first"} method: the first
  occurrence of a value wins.
}


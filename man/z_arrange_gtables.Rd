\name{z_arrange_gtables}
\alias{z_arrange_gtables}
\title{Arrange the z values within gtable objects}
\usage{
  z_arrange_gtables(gtables, z)
}
\arguments{
  \item{gtables}{A list of gtable objects}

  \item{z}{A numeric vector of relative z values}
}
\description{
  This is usually used before rbinding or cbinding the
  gtables together. The resulting z values will be
  normalized.
}
\details{
  Ties are handled by the \code{"first"} method: the first
  occurrence of a value wins.
}


\name{gtable_filter}
\alias{gtable_filter}
\title{Filter cells by name.}
\usage{
  gtable_filter(x, pattern, fixed = FALSE, trim = TRUE)
}
\arguments{
  \item{x}{a gtable object}

  \item{pattern}{character string containing a
  \link{regular expression} (or character string for
  \code{fixed = TRUE}) to be matched in the given character
  vector.  Coerced by \code{\link{as.character}} to a
  character string if possible.  If a character vector of
  length 2 or more is supplied, the first element is used
  with a warning.  Missing values are allowed except for
  \code{regexpr} and \code{gregexpr}.}

  \item{fixed}{logical.  If \code{TRUE}, \code{pattern} is
  a string to be matched as is.  Overrides all conflicting
  arguments.}
}
\description{
  Filter cells by name.
}


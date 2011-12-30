#' Row and column binding for gtables.
#'
#' @param ... gtables to combine (\code{x} and \code{y})
#' @param size How should the widths (for rbind) and the heights (for cbind)
#'   be combined across the gtables: take values from \code{first},
#'   or \code{last} gtable, or compute the \code{min} or \code{max} values.
#'   Defaults to \code{max}.
#' @name bind

#' @rdname bind
#' @method rbind gtable
#' @export
rbind.gtable <- function(..., size = "max") {
  Reduce(function(x, y) rbind_gtable(x, y, size = size), list(...))
}

rbind_gtable <- function(x, y, size = "max") {
  stopifnot(ncol(x) == ncol(y))
  if (nrow(x) == 0) return(y)
  if (nrow(y) == 0) return(x)
  
  x$heights <- insert.unit(x$heights, y$heights)

  size <- match.arg(size, c("first", "last", "max", "min"))
  x$widths <- switch(size,
    first = x$widths,
    last = y$widths,
    min = compare.unit(x$widths, y$widths, pmin),
    max = compare.unit(x$widths, y$widths, pmax)
  )

  x$grobs <- append(x$grobs, y$grobs)
  
  y$layout$t <- y$layout$t + nrow(x) - 1
  y$layout$b <- y$layout$b + nrow(x) - 1
  x$layout <- rbind(x$layout, y$layout)

  x
}

#' @rdname bind
#' @method cbind gtable
#' @export
cbind.gtable <- function(..., size = "max") {
  Reduce(function(x, y) cbind_gtable(x, y, size = size), list(...))
}

cbind_gtable <- function(x, y, size = "max") {
  stopifnot(nrow(x) == nrow(y))
  if (ncol(x) == 0) return(y)
  if (ncol(y) == 0) return(x)
  
  x$widths <- insert.unit(x$widths, y$widths)

  size <- match.arg(size, c("first", "last", "max", "min"))
  x$heights <- switch(size,
    first = x$heights,
    last = y$heights,
    min = compare.unit(x$heights, y$heights, pmin),
    max = compare.unit(x$heights, y$heights, pmax)
  )

  x$grobs <- append(x$grobs, y$grobs)
  
  y$layout$l <- y$layout$l + ncol(x) - 1
  y$layout$r <- y$layout$r + ncol(x) - 1
  x$layout <- rbind(x$layout, y$layout)

  x
}

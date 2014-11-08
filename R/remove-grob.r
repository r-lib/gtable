#' Removes grobs
#' 
#' This only removes grobs from the table. It doesn't affect the table in 
#' any way.
#' 
#' @param x a \code{\link{gtable}} object
#' @param names a character vector of name(s), as specified in
#'              gtable_add_grob or x$layout$name. Multiple names can be
#'              specified.
#' @param grobs a single grob object or a list of grob objects. Multiple
#'              grobs can be specified.
#' @export
#' @examples
#' gt <- gtable(unit(rep(5, 3), c("cm")), unit(5, "cm"))
#' rect <- rectGrob(gp = gpar(fill = "black"))
#' circ <- circleGrob(gp = gpar(fill = "red"))
#'
#' gt <- gtable_add_grob(gt, rect, 1, 1, name = "rect")
#' gt <- gtable_add_grob(gt, circ, 1, 3, name = "circ")
#'
#' # Multiple ways to remove grobs. Names and grobs can also be specified
#' # in combination:
#' gtable_rm_grob(gt, names = "circ")
#' gtable_rm_grob(gt, names = c("circ", "rect"))
#' gtable_rm_grob(gt, grobs = list(rect, circ))
#' gtable_rm_grob(gt, grobs = gt$grobs[[1]])
gtable_rm_grob <- function(x, names = NULL, grobs = NULL)
{
  stopifnot(is.gtable(x))

  if (is.grob(grobs)) grobs <- list(grobs)

  if (is.null(names) && is.null(grobs))
    stop("No grobs supplied! Please specify grob(s) to remove.")
  else if (is.null(names) && !is.null(grobs))
    stopifnot(is.list(grobs))
  else if (is.null(grobs) && !is.null(names)) {
    if (!is.character(names))
      stop("Error: names should be of type \"character\"")
  }
  else {
    stopifnot(is.list(grobs))
    if (!is.character(names))
      stop("Error: names should be of type \"character\"")
  }

  # Start by keeping everything. We set this variable primarily so we can
  # combine multiple ways to figure out which grobs to remove.
  keep <- TRUE

  if (!is.null(names)) {
    # Produce a logical vector describing which grobs to keep and which
    # ones to discard.
    keep <- sapply(
              X = x$layout$name,
              # See which of the names in x$layout match (or are in the 
              # list of) those supplied to this function and mark them 
              # as FALSE. Everything else gets marked TRUE.
              FUN = function(n, ns) {
                !(n %in% ns)
              },
              USE.NAMES = FALSE,
              ns = names
            )
  }

  if (!is.null(grobs)) {
    # Unlist (i.e., list -> vector) all supplied grobs for doing
    # comparisons. Unlisting might not be necessary. It just seems more
    # thorough.
    grobs_to_rm <- lapply(X = grobs, FUN = function(g) unlist(g))      

    # Figure out which grobs to keep, taking note of previous information,
    # if any.
    keep <- keep & sapply(
              X = x$grobs,
              FUN = function(g, gs) {
                # Do any of the supplied grobs match the one we're
                # currently looking at? If so, set to FALSE to remove the
                # current grob. all() would do the trick without the
                # negation, but using !any() seems clearer.
                !any(
                  sapply(
                      X = gs,         # Supplied grobs/grobs to remove
                      ug = unlist(g), # The grob we're looking at
                      # Do they match?/Are the grobs equal?
                      FUN = function(grob, ug) setequal(ug, grob),
                      USE.NAMES = FALSE
                  )
                )
              },
              USE.NAMES = FALSE,
              gs = grobs_to_rm
            )
  }

  # Both x$grobs and x$layout are hypothetically kept in the same order
  x$grobs <- x$grobs[keep]

  # x$layout is two-dimensional, so keep just the relevant rows and keep
  # all the columns
  x$layout <- x$layout[keep,]

  x
}

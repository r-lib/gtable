# Fast data.frame constructor
# No checking, recycling etc. unless asked for
new_data_frame <- function(x, n = NULL) {
  if (is.null(n)) {
    n <- if (length(x) == 0) 0 else length(x[[1]])
  }

  class(x) <- "data.frame"

  attr(x, "row.names") <- .set_row_names(n)
  x
}

validate_data_frame <- function(x) {
  if (length(unique(lengths(x))) != 1) stop('All elements in a data.frame must be of equal length', call. = FALSE)
  if (is.null(names(x))) stop('Columns must be named', call. = FALSE)
}

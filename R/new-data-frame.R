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
  if (length(unique(lengths(x))) != 1) {
    cli::cli_abort('All elements in a data.frame must be of equal length')
  }
  if (is.null(names(x))) {
    cli::cli_abort('columns must be named')
  }
}

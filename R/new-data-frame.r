# Fast data.frame constructor
# No checking, recycling etc. unless asked for
new_data_frame <- function(..., .check = FALSE) {
  data <- list(...)
  if (.check) {
    n_row <- max(lengths(data))
    for (i in seq_along(data)) {
      if (length(data[[i]]) != n_row) data[[i]] <- rep(data[[i]], length.out = n_row)
    }
    if (is.null(names(data))) {
      names(data) <- make.names(seq_along(data))
    }
  } else {
    n_row <- if (length(data) == 0) 0 else length(data[[1]])
  }
  structure(data, class = "data.frame", row.names = c(NA_integer_, -n_row))
}

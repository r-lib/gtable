check_gtable <- function(x,
                         ...,
                         allow_null = FALSE,
                         arg = caller_arg(x),
                         call = caller_env()) {
  if (!missing(x)) {
    if (is.gtable(x)) {
      return(invisible(NULL))
    }
    if (allow_null && is_null(x)) {
      return(invisible(NULL))
    }
  }

  stop_input_type(
    x,
    "a gtable object",
    ...,
    allow_null = allow_null,
    arg = arg,
    call = call
  )
}

check_unit <- function(x,
                       ...,
                       allow_null = FALSE,
                       arg = caller_arg(x),
                       call = caller_env()) {
  if (!missing(x)) {
    if (is.unit(x)) {
      return(invisible(NULL))
    }
    if (allow_null && is_null(x)) {
      return(invisible(NULL))
    }
  }

  stop_input_type(
    x,
    "a unit vector",
    ...,
    allow_null = allow_null,
    arg = arg,
    call = call
  )
}

neg_to_pos <- function(x, max) {
  ifelse(x >= 0, x, max + 1 + x)
}

compare_unit <- function(x, y, comp = `=`) {
  if (length(y) == 0) return(x)
  if (length(x) == 0) return(y)
  if (getRversion() >= "3.6" && (is.list(x) || is.list(y))) {
    if (identical(comp, pmin)) {
      return(unit.pmin(x, y))
    }
    if (identical(comp, pmax)) {
      return(unit.pmax(x, y))
    }
    cli::cli_abort('comparison not supported')
  }
  # Below should be removed once the old grid unit implementation has been deprecated
  x_attr <- attributes(x)
  x_val <- unclass(x)
  y_val <- unclass(y)

  x_unit <- x_attr$unit
  y_unit <- attr(x, "unit")

  if (!all(x_unit == y_unit)) {
    cli::cli_abort("comparison of units with different types currently not supported")
  }

  `attributes<-`(comp(x_val, y_val), x_attr)
}


insert.unit <- function(x, values, after = length(x)) {
  lengx <- length(x)
  if (lengx == 0) return(values)
  if (length(values) == 0) return(x)

  if (after <= 0) {
    unit.c(values, x)
  } else if (after >= lengx) {
    unit.c(x, values)
  } else {
    unit.c(x[1L:after], values, x[(after + 1L):lengx])
  }
}

"%||%" <- function(a, b) {
  if (!is.null(a)) a else b
}

width_cm <- function(x) {
  if (is.grob(x)) {
    convertWidth(grobWidth(x), "cm", TRUE)
  } else if (is.list(x)) {
    vapply(x, width_cm, numeric(1))
  } else if (is.unit(x)) {
    convertWidth(x, "cm", TRUE)
  } else {
    cli::cli_abort("Unknown input")
  }
}
height_cm <- function(x) {
  if (is.grob(x)) {
    convertWidth(grobHeight(x), "cm", TRUE)
  } else if (is.list(x)) {
    vapply(x, height_cm, numeric(1))
  } else if (is.unit(x)) {
    convertHeight(x, "cm", TRUE)
  } else {
    cli::cli_abort("Unknown input")
  }
}

# Check that x is same length as g, or length 1
len_same_or_1 <- function(x, n) {
  length(x) == 1 || length(x) == n
}


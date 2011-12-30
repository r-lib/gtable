
neg_to_pos <- function(x, max) {
  ifelse(x >= 0, x, max + 1 + x)
}


insert.unit <- function (x, values, after = length(x)) {
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
    stop("Unknown input")
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
    stop("Unknown input")
  }  
}

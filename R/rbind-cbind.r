#' @S3method rbind gtable
rbind.gtable <- function(..., pos = nrow(x)) {
  tables <- list(...)
  stopifnot(length(tables) == 2)

  x <- tables[[1]]
  y <- tables[[2]]

  stopifnot(ncol(x) == ncol(y))
  if (nrow(x) == 0) return(y)
  if (nrow(y) == 0) return(x)
  
  x$heights <- insert.unit(x$heights, y$heights, pos)
  x$grobs <- append(x$grobs, y$grobs)
  
  y$layout$t <- y$layout$t + pos 
  y$layout$b <- y$layout$b + pos

  x$layout$t <- ifelse(x$layout$t > pos, x$layout$t + nrow(y), x$layout$t)
  x$layout$b <- ifelse(x$layout$b > pos, x$layout$b + nrow(y), x$layout$b)

  x$layout <- rbind(x$layout, y$layout)
  x
}

#' @S3method cbind gtable
cbind.gtable <- function(..., pos = ncol(x)) {
  tables <- list(...)
  stopifnot(length(tables) == 2)

  x <- tables[[1]]
  y <- tables[[2]]

  stopifnot(nrow(x) == nrow(y))
  if (ncol(x) == 0) return(y)
  if (ncol(y) == 0) return(x)
  
  x$widths <- insert.unit(x$widths, y$widths, pos)
  x$grobs <- append(x$grobs, y$grobs)
  
  y$layout$l <- y$layout$l + pos 
  y$layout$r <- y$layout$r + pos
  
  x$layout$l <- ifelse(x$layout$l > pos, x$layout$l + ncol(y), x$layout$l)
  x$layout$r <- ifelse(x$layout$r > pos, x$layout$r + ncol(y), x$layout$r)  

  x$layout <- rbind(x$layout, y$layout)
  x
}
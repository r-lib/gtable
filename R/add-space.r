# Add column spacing
# 
# @param width either 1 or row - 1 units
gtable_add_col_space <- function(x, width) {
  n <- ncol(x) - 1
  if (n == 0) return(x)
  
  stopifnot(length(width) == 1 || length(width) == n)
  width <- rep(width, length = n)

  for(i in rev(seq_len(n))) {
    x <- gtable_add_cols(x, width[i], pos = i)
  }

  x
}
gtable_add_row_space <- function(x, height) {
  n <- nrow(x) - 1
  if (n == 0) return(x)
  
  stopifnot(length(height) == 1 || length(height) == n)
  height <- rep(height, length = n)
  
  for(i in rev(seq_len(n))) {
    x <- gtable_add_rows(x, height[i], pos = i)
  }
  
  x
}

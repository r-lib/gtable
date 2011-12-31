\name{reindex_rows}
\alias{reindex_rows}
\usage{
  reindex_rows(x, index)
}
\examples{
gt <- gtable(heights = unit(rep(1, 3), "cm"), rownames = c("a", "b", "c"))
reindex_rows(gt, c("a", "b", "c"))
}


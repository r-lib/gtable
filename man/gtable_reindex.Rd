\name{gtable_reindex}
\alias{gtable_reindex}
\title{Reindex a gtable.}
\usage{
  gtable_reindex(x, index, along = 1)
}
\description{
  Reindex a gtable.
}
\examples{
gt <- gtable(heights = unit(rep(1, 3), "cm"), rownames = c("a", "b", "c"))
rownames(reindex_rows(gt, c("a", "b", "c")))
rownames(reindex_rows(gt, c("a", "b")))
rownames(reindex_rows(gt, c("a")))
rownames(reindex_rows(gt, c("a", "d", "e")))
}
\keyword{internal}


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
rownames(gtable:::gtable_reindex(gt, c("a", "b", "c")))
rownames(gtable:::gtable_reindex(gt, c("a", "b")))
rownames(gtable:::gtable_reindex(gt, c("a")))
rownames(gtable:::gtable_reindex(gt, c("a", "d", "e")))
}
\keyword{internal}


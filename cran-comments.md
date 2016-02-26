## Test environments
* local OS X install, R 3.2.3
* ubuntu 12.04 (on travis-ci), R 3.2.3
* win-builder (devel and release)

## R CMD check results

0 errors | 0 warnings | 1 note

* I have updated my maintainer email address.

## Reverse dependencies

* I have run R CMD check on the 17 downstream dependencies.
  (https://github.com/hadley/gtable/blob/master/revdep/).

* Maintainers were notified Feb 8 and Feb 25.

* There was one failure: 

  * dotwhisker: checking examples ... ERROR
    This is because gtable now imports grid rather than depending on it.

* But I failed to install: MultiMeta, ncappc, spikeSlabGAM, strvalidator

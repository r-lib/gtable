# Setup

## Platform

|setting  |value                        |
|:--------|:----------------------------|
|version  |R version 3.2.3 (2015-12-10) |
|system   |x86_64, darwin13.4.0         |
|ui       |X11                          |
|language |(EN)                         |
|collate  |en_US.UTF-8                  |
|tz       |America/Chicago              |
|date     |2016-02-25                   |

## Packages

|package  |*  |version    |date       |source                |
|:--------|:--|:----------|:----------|:---------------------|
|gtable   |   |0.1.2.9000 |2016-02-25 |local (hadley/gtable) |
|plyr     |   |1.8.3      |2015-06-12 |CRAN (R 3.2.0)        |
|testthat |*  |0.11.0     |2015-10-14 |CRAN (R 3.2.0)        |

# Check results
17 checked out of 0 dependencies 

## cowplot (0.6.0)
Maintainer: Claus O. Wilke <wilke@austin.utexas.edu>  
Bug reports: https://github.com/wilkelab/cowplot/issues

0 errors | 0 warnings | 0 notes

## dotwhisker (0.2.0.4)
Maintainer: Yue Hu <yue-hu-1@uiowa.edu>  
Bug reports: https://github.com/fsolt/dotwhisker/issues

1 error  | 0 warnings | 1 note 

```
checking examples ... ERROR
Running examples in ‘dotwhisker-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: add_brackets
> ### Title: Add Labelled Brackets to Group Predictors in a Dot-and-Whisker
> ###   Plot
> ### Aliases: add_brackets
> 
... 25 lines ...
+     theme(legend.position="none")
Scale for 'y' is already present. Adding another scale for 'y', which will
replace the existing scale.
> 
> two_brackets <- list(c("Engine", "cyl", "disp"), c("Not Engine", "(Intercept)", "wt"))
> 
> g <- p %>% add_brackets(two_brackets)
> 
> grid.draw(g)  # to display
Error: could not find function "grid.draw"
Execution halted

checking re-building of vignette outputs ... NOTE
Error in re-building vignettes:
  ...
Loading required package: sandwich
Loading required package: lmtest
Loading required package: zoo

Attaching package: 'zoo'

The following objects are masked from 'package:base':
... 8 lines ...
The following object is masked from 'package:dplyr':

    select

Loading required package: betareg
Scale for 'y' is already present. Adding another scale for 'y', which
will replace the existing scale.
Quitting from lines 168-210 (dotwhisker-vignette.Rmd) 
Error: processing vignette 'dotwhisker-vignette.Rmd' failed with diagnostics:
could not find function "grid.draw"
Execution halted
```

## GGally (1.0.1)
Maintainer: Barret Schloerke <schloerke@gmail.com>  
Bug reports: https://github.com/ggobi/ggally/issues

0 errors | 0 warnings | 1 note 

```
checking installed package size ... NOTE
  installed size is  7.6Mb
  sub-directories of 1Mb or more:
    doc   6.8Mb
```

## ggalt (0.1.1)
Maintainer: Bob Rudis <bob@rudis.net>  
Bug reports: https://github.com/hrbrmstr/ggalt/issues

0 errors | 0 warnings | 0 notes

## ggplot2 (2.0.0)
Maintainer: Hadley Wickham <hadley@rstudio.com>  
Bug reports: https://github.com/hadley/ggplot2/issues

0 errors | 0 warnings | 0 notes

## ggtern (2.0.1)
Maintainer: Nicholas Hamilton <nick@ggtern.com>

0 errors | 0 warnings | 1 note 

```
checking Rd cross-references ... NOTE
Package unavailable to check Rd xrefs: ‘chemometrics’
```

## gridExtra (2.0.0)
Maintainer: Baptiste Auguie <baptiste.auguie@gmail.com>

0 errors | 0 warnings | 0 notes

## Hmisc (3.17-2)
Maintainer: Frank E Harrell Jr <f.harrell@vanderbilt.edu>

0 errors | 0 warnings | 0 notes

## MultiMeta (0.1)
Maintainer: Dragana Vuckovic <dragana.vuckovic@burlo.trieste.it>

0 errors | 1 warning  | 0 notes

```
checking whether package ‘MultiMeta’ can be installed ... WARNING
Found the following significant warnings:
  Warning: replacing previous import by ‘grid::arrow’ when loading ‘MultiMeta’
  Warning: replacing previous import by ‘grid::unit’ when loading ‘MultiMeta’
See ‘/Users/hadley/Documents/ggplot/gtable/revdep/checks/MultiMeta.Rcheck/00install.out’ for details.
```

## ncappc (0.2.1.1)
Maintainer: Chayan Acharya <chayan.acharya@farmbio.uu.se>

0 errors | 1 warning  | 0 notes

```
checking whether package ‘ncappc’ can be installed ... WARNING
Found the following significant warnings:
  Warning: replacing previous import by ‘grid::arrow’ when loading ‘ncappc’
  Warning: replacing previous import by ‘grid::unit’ when loading ‘ncappc’
  Warning: replacing previous import by ‘scales::alpha’ when loading ‘ncappc’
See ‘/Users/hadley/Documents/ggplot/gtable/revdep/checks/ncappc.Rcheck/00install.out’ for details.
```

## pander (0.6.0)
Maintainer: Gergely Daróczi <daroczig@rapporter.net>  
Bug reports: https://github.com/rapporter/pander/issues

0 errors | 0 warnings | 0 notes

## pheatmap (1.0.8)
Maintainer: Raivo Kolde <rkolde@gmail.com>

0 errors | 0 warnings | 0 notes

## RAM (1.2.1.3)
Maintainer: Wen Chen <Wen.Chen@agr.gc.ca>  
Bug reports: https://bitbucket.org/Wen_Chen/ram_releases/issues/

0 errors | 0 warnings | 0 notes

## spikeSlabGAM (1.1-9)
Maintainer: Fabian Scheipl
 <fabian.scheipl@stat.uni-muenchen.de>

0 errors | 1 warning  | 0 notes

```
checking whether package ‘spikeSlabGAM’ can be installed ... WARNING
Found the following significant warnings:
  Warning: replacing previous import by ‘scales::alpha’ when loading ‘spikeSlabGAM’
  Warning: replacing previous import by ‘grid::unit’ when loading ‘spikeSlabGAM’
See ‘/Users/hadley/Documents/ggplot/gtable/revdep/checks/spikeSlabGAM.Rcheck/00install.out’ for details.
```

## strvalidator (1.6.0)
Maintainer: Oskar Hansson <oskar.hansson@fhi.no>  
Bug reports: https://github.com/OskarHansson/strvalidator/issues

1 error  | 0 warnings | 0 notes

```
checking whether package ‘strvalidator’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/ggplot/gtable/revdep/checks/strvalidator.Rcheck/00install.out’ for details.
```

## tcR (2.2.1.7)
Maintainer: Vadim Nazarov <vdm.nazarov@gmail.com>  
Bug reports: https://github.com/imminfo/tcr/issues

0 errors | 0 warnings | 2 notes

```
checking installed package size ... NOTE
  installed size is  5.6Mb
  sub-directories of 1Mb or more:
    data   1.2Mb
    doc    3.9Mb

checking dependencies in R code ... NOTE
Namespace in Imports field not imported from: ‘scales’
  All declared Imports should be used.
```

## waffle (0.5.0)
Maintainer: Bob Rudis <bob@rudis.net>  
Bug reports: https://github.com/hrbrmstr/waffle/issues

0 errors | 0 warnings | 0 notes


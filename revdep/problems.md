# amplican

Version: 1.2.1

## In both

*   checking whether package ‘amplican’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: package ‘data.table’ was built under R version 3.5.2
    See ‘/Users/thomas/Dropbox/GitHub/gtable/revdep/checks.noindex/amplican/new/amplican.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 13.3Mb
      sub-directories of 1Mb or more:
        doc  12.5Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘CrispRVariants’
    ```

# bea.R

Version: 1.0.6

## In both

*   checking whether package ‘bea.R’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: package ‘data.table’ was built under R version 3.5.2
    See ‘/Users/thomas/Dropbox/GitHub/gtable/revdep/checks.noindex/bea.R/new/bea.R.Rcheck/00install.out’ for details.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘Rcpp’ ‘chron’ ‘colorspace’ ‘gtable’ ‘htmltools’ ‘htmlwidgets’
      ‘httpuv’ ‘magrittr’ ‘munsell’ ‘plyr’ ‘scales’ ‘stringi’ ‘xtable’
      ‘yaml’
      All declared Imports should be used.
    ```

# behaviorchange

Version: 0.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘magrittr’ ‘methods’
      All declared Imports should be used.
    ```

# BloodCancerMultiOmics2017

Version: 1.0.2

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    
    The following objects are masked from 'package:IRanges':
    
        intersect, setdiff, union
    
    The following objects are masked from 'package:S4Vectors':
    
        intersect, setdiff, union
    
    The following objects are masked from 'package:BiocGenerics':
    
        intersect, setdiff, union
    
    The following objects are masked from 'package:base':
    
        intersect, setdiff, union
    
    Quitting from lines 46-92 (BloodCancerMultiOmics2017.Rmd) 
    Error: processing vignette 'BloodCancerMultiOmics2017.Rmd' failed with diagnostics:
    there is no package called 'org.Hs.eg.db'
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘org.Hs.eg.db’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 115.3Mb
      sub-directories of 1Mb or more:
        data     80.0Mb
        doc      26.5Mb
        extdata   8.5Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘vsn’
    ```

# BubbleTree

Version: 2.10.0

## In both

*   checking whether package ‘BubbleTree’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: package ‘dplyr’ was built under R version 3.5.2
    See ‘/Users/thomas/Dropbox/GitHub/gtable/revdep/checks.noindex/BubbleTree/new/BubbleTree.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 29.2Mb
      sub-directories of 1Mb or more:
        data  23.4Mb
        doc    5.3Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    annoByOverlap,Annotate: no visible binding for global variable
      'queryHits'
    Undefined global functions or variables:
      queryHits
    ```

# CEMiTool

Version: 1.4.2

## In both

*   checking whether package ‘CEMiTool’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/thomas/Dropbox/GitHub/gtable/revdep/checks.noindex/CEMiTool/new/CEMiTool.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘CEMiTool’ ...
** R
** data
*** moving datasets to lazyload DB
** exec
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘GO.db’
ERROR: lazy loading failed for package ‘CEMiTool’
* removing ‘/Users/thomas/Dropbox/GitHub/gtable/revdep/checks.noindex/CEMiTool/new/CEMiTool.Rcheck/CEMiTool’

```
### CRAN

```
* installing *source* package ‘CEMiTool’ ...
** R
** data
*** moving datasets to lazyload DB
** exec
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘GO.db’
ERROR: lazy loading failed for package ‘CEMiTool’
* removing ‘/Users/thomas/Dropbox/GitHub/gtable/revdep/checks.noindex/CEMiTool/old/CEMiTool.Rcheck/CEMiTool’

```
# ClassifyR

Version: 2.0.10

## In both

*   checking examples ... ERROR
    ```
    ...
    +     head(tunedParameters(classified))
    +     performance(classified)
    +   }
    Loading required package: glmnet
    Loading required package: Matrix
    Warning: package ‘Matrix’ was built under R version 3.5.2
    
    Attaching package: ‘Matrix’
    
    The following object is masked from ‘package:S4Vectors’:
    
        expand
    
    Loading required package: foreach
    Loaded glmnet 2.0-16
    
    Error: All cross-validations had an error.
    Error in (function (classes, fdef, mtable)  : 
      unable to find an inherited method for function ‘calcCVperformance’ for signature ‘"list"’
    Calls: calcCVperformance -> <Anonymous>
    Execution halted
    ```

*   R CMD check timed out
    

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘parathyroidSE’ ‘mnlogit’
    ```

*   checking R code for possible problems ... NOTE
    ```
    .posterior_probs : <anonymous>: no visible global function definition
      for ‘dmvnorm’
    plotFeatureClasses,DataFrame : <anonymous>: no visible binding for
      global variable ‘measurement’
    plotFeatureClasses,DataFrame : <anonymous>: no visible binding for
      global variable ‘..density..’
    plotFeatureClasses,DataFrame : <anonymous>: no visible binding for
      global variable ‘legends grouping’
    samplesMetricMap,list: no visible binding for global variable ‘Class’
    samplesMetricMap,list: no visible binding for global variable ‘name’
    samplesMetricMap,list: no visible binding for global variable ‘type’
    samplesMetricMap,list: no visible binding for global variable ‘Metric’
    selectionPlot,list: no visible binding for global variable ‘Freq’
    Undefined global functions or variables:
      ..density.. Class Freq Metric dmvnorm legends grouping measurement
      name type
    Consider adding
      importFrom("base", "grouping")
    to your NAMESPACE file.
    ```

# condformat

Version: 0.8.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(condformat)
      > 
      > test_check("condformat")
      [31m--[39m [31m1. Error: condformat2excel generates a file (@test_rendering.R#42) [39m [31m--------------------------------------------------------[39m
      Please install the xlsx package in order to export to excel
      1: condformat2excel(condformat(head(iris, n = rows_to_write)), filename = filename) at testthat/test_rendering.R:42
      2: require_xlsx()
      3: stop("Please install the xlsx package in order to export to excel")
      
      == testthat results  ==========================================================================================================
      OK: 125 SKIPPED: 0 FAILED: 1
      1. Error: condformat2excel generates a file (@test_rendering.R#42) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘graphics’
      All declared Imports should be used.
    ```

# egg

Version: 0.4.2

## Newly broken

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Loading required package: ggplot2
    `stat_bin()` using `bins = 30`. Pick better value with `binwidth`.
    `stat_bindot()` using `bins = 30`. Pick better value with `binwidth`.
    `stat_bin()` using `bins = 30`. Pick better value with `binwidth`.
    `stat_bin()` using `bins = 30`. Pick better value with `binwidth`.
    `stat_bindot()` using `bins = 30`. Pick better value with `binwidth`.
    `stat_bin()` using `bins = 30`. Pick better value with `binwidth`.
    `stat_bindot()` using `bins = 30`. Pick better value with `binwidth`.
    `stat_bindot()` using `bins = 30`. Pick better value with `binwidth`.
    `stat_bindot()` using `bins = 30`. Pick better value with `binwidth`.
    `stat_bindot()` using `bins = 30`. Pick better value with `binwidth`.
    Quitting from lines 291-298 (Ecosystem.Rmd) 
    Error: processing vignette 'Ecosystem.Rmd' failed with diagnostics:
    invalid 'clip' value
    Execution halted
    ```

# FindMyFriends

Version: 1.10.0

## In both

*   R CMD check timed out
    

*   checking for code/documentation mismatches ... WARNING
    ```
    Functions or methods with usage in documentation object 'pgVirtual-class' but not in code:
      as
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.0Mb
      sub-directories of 1Mb or more:
        R         1.0Mb
        doc       1.5Mb
        extdata   1.8Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘gtable:::insert.unit’ ‘gtable:::z_arrange_gtables’
      See the note in ?`:::` about the use of this operator.
    ```

# GenVisR

Version: 1.12.1

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘GenVisR-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: Lolliplot-class
    > ### Title: Class Lolliplot
    > ### Aliases: Lolliplot-class Lolliplot
    > 
    > ### ** Examples
    > 
    > # Load a pre-existing data set
    > dataset <- PIK3CA
    > 
    > # mode 1, amino acid changes are not present
    > 
    > library(TxDb.Hsapiens.UCSC.hg38.knownGene)
    Error in library(TxDb.Hsapiens.UCSC.hg38.knownGene) : 
      there is no package called ‘TxDb.Hsapiens.UCSC.hg38.knownGene’
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      [31m──[39m [31m3. Error: (unknown) (@test-genCov_qual.R#1) [39m [31m───────────────────────────────────────────────────────────────────────────────[39m
      there is no package called 'BSgenome.Hsapiens.UCSC.hg19'
      1: suppressPackageStartupMessages(library(BSgenome.Hsapiens.UCSC.hg19)) at testthat/test-genCov_qual.R:1
      2: withCallingHandlers(expr, packageStartupMessage = function(c) invokeRestart("muffleMessage"))
      3: library(BSgenome.Hsapiens.UCSC.hg19)
      4: stop(txt, domain = NA)
      
      ══ testthat results  ══════════════════════════════════════════════════════════════════════════════════════════════════════════
      OK: 454 SKIPPED: 35 FAILED: 3
      1. Error: (unknown) (@test-Lolliplot-class.R#3) 
      2. Error: (unknown) (@test-VEP-class.R#306) 
      3. Error: (unknown) (@test-genCov_qual.R#1) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    This function is part of the new S4 feature and is under active development
    This function is part of the new S4 feature and is under active development
    Warning in .local(object, labelColumn, verbose, ...) :
      Removed 1212 rows from the data which harbored duplicate genomic locations
    Warning in .local(object, labelColumn, verbose, ...) :
      Removed 1212 rows from the data which harbored duplicate genomic locations
    Warning in has_utility("convert", "ImageMagick") :
      ImageMagick not installed or not in PATH
    Warning in .local(object, labelColumn, verbose, ...) :
      Removed 1212 rows from the data which harbored duplicate genomic locations
    Warning in .local(object, labelColumn, verbose, ...) :
      Removed 1212 rows from the data which harbored duplicate genomic locations
    Warning: package 'data.table' was built under R version 3.5.2
    Warning in setMutationHierarchy(object, mutationHierarchy, verbose) :
      The following mutations were found in the input however were not specified in the mutationHierarchy! upstream_gene_variant, splice_region_variant,non_coding_transcript_exon_variant, intron_variant,non_coding_transcript_variant, downstream_gene_variant, non_coding_transcript_exon_variant, 5_prime_UTR_variant, intron_variant, stop_lost, regulatory_region_variant, 3_prime_UTR_variant, intron_variant,NMD_transcript_variant, missense_variant,NMD_transcript_variant, inframe_insertion, inframe_deletion, frameshift_variant, 3_prime_UTR_variant,NMD_transcript_variant, splice_acceptor_variant,non_coding_transcript_variant, missense_variant,splice_region_variant,NMD_transcript_variant, synonymous_variant, synonymous_variant,NMD_transcript_variant, splice_donor_variant,non_coding_transcript_variant, start_lost, stop_gained,NMD_transcript_variant, 5_prime_UTR_variant,NMD_transcript_variant adding these in as least important and assigning random colors!
    Warning in .local(object, labelColumn, verbose, ...) :
      Removed 1212 rows from the data which harbored duplicate genomic locations
    Quitting from lines 224-233 (Upcoming_Features.Rmd) 
    Error: processing vignette 'Upcoming_Features.Rmd' failed with diagnostics:
    there is no package called 'BSgenome.Hsapiens.UCSC.hg19'
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘BSgenome.Hsapiens.UCSC.hg19’ ‘TxDb.Hsapiens.UCSC.hg19.knownGene’
      ‘TxDb.Hsapiens.UCSC.hg38.knownGene’ ‘BSgenome.Hsapiens.UCSC.hg38’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 14.0Mb
      sub-directories of 1Mb or more:
        doc      11.5Mb
        extdata   1.0Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘reshape2’
      All declared Imports should be used.
    ```

*   checking R code for possible problems ... NOTE
    ```
    setTierTwo,data.table : a: no visible binding for global variable ‘tmp’
    toLolliplot,GMS: no visible binding for global variable ‘missingINdex’
    toLolliplot,VEP: no visible binding for global variable ‘missingINdex’
    Undefined global functions or variables:
      missingINdex tmp
    ```

# geofacet

Version: 0.1.10

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 217 marked UTF-8 strings
    ```

# ggalt

Version: 0.4.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘plotly’
      All declared Imports should be used.
    ```

# ggbio

Version: 1.28.5

## In both

*   checking examples ... ERROR
    ```
    ...
    > ###################################################
    > p1 <- autoplot(xRleList, stat = "identity")
    > p2 <- autoplot(xRleList, stat = "identity", geom = "point", color = "red")
    > tracks('line' = p1, "point" = p2)
    > 
    > 
    > ###################################################
    > ### code chunk number 25: rlel-slice
    > ###################################################
    > p1 <- autoplot(xRleList, type = "viewMaxs", stat = "slice", lower = 5)
    > p2 <- autoplot(xRleList, type = "viewMaxs", stat = "slice", lower = 5, geom = "heatmap")
    > tracks('bar' = p1, "heatmap" = p2)
    > 
    > 
    > ###################################################
    > ### code chunk number 26: txdb
    > ###################################################
    > library(TxDb.Hsapiens.UCSC.hg19.knownGene)
    Error in library(TxDb.Hsapiens.UCSC.hg19.knownGene) : 
      there is no package called 'TxDb.Hsapiens.UCSC.hg19.knownGene'
    Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
        expand.grid
    
    Loading required package: IRanges
    Loading required package: GenomeInfoDb
      ordinary text without R code
    
    label: unnamed-chunk-5
    Quitting from lines 143-157 (ggbio.Rnw) 
    Error in library(Homo.sapiens) : 
      there is no package called 'Homo.sapiens'
    Calls: knit2pdf ... withCallingHandlers -> withVisible -> eval -> eval -> library
    In addition: Warning messages:
    1: `panel.margin` is deprecated. Please use `panel.spacing` property instead 
    2: `panel.margin` is deprecated. Please use `panel.spacing` property instead 
    3: `panel.margin` is deprecated. Please use `panel.spacing` property instead 
    4: `panel.margin` is deprecated. Please use `panel.spacing` property instead 
    Execution halted
    make: *** [ggbio.pdf] Error 1
    Error in buildVignettes(dir = "/Users/thomas/Dropbox/GitHub/gtable/revdep/checks.noindex/ggbio/new/ggbio.Rcheck/vign_test/ggbio") : 
      running 'make' failed
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘BSgenome.Hsapiens.UCSC.hg19’ ‘Homo.sapiens’
      ‘TxDb.Hsapiens.UCSC.hg19.knownGene’
      ‘TxDb.Mmusculus.UCSC.mm9.knownGene’ ‘EnsDb.Hsapiens.v75’
    ```

*   checking dependencies in R code ... NOTE
    ```
    ':::' call which should be '::': 'ggplot2:::set_last_plot'
      See the note in ?`:::` about the use of this operator.
    Unexported objects imported by ':::' calls:
      'S4Vectors:::top_prenv' 'ggplot2:::add_ggplot' 'ggplot2:::cunion'
      'ggplot2:::rename_aes' 'ggplot2:::rescale01'
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    layout_karyogram,GRanges: no visible binding for global variable 'xend'
    layout_karyogram,GRanges: no visible binding for global variable 'yend'
    layout_karyogram,GRanges: no visible binding for global variable 'y2'
    layout_karyogram,GRanges: no visible binding for global variable
      'yend2'
    layout_karyogram,GRanges: no visible binding for global variable 'name'
    plotFragLength,character-GRanges: no visible binding for global
      variable '.fragLength'
    plotSpliceSum,character-EnsDb: possible error in GRangesFilter(which,
      condition = "overlapping"): unused argument (condition =
      "overlapping")
    stat_mismatch,GRanges: no visible binding for global variable 'sts'
    stat_mismatch,GRanges: no visible binding for global variable 'eds'
    stat_mismatch,GRanges: no visible binding for global variable 'read'
    Undefined global functions or variables:
      .fragLength .layout_circle.stats .x breaks coefs data eds fe fl
      gieStain ideoCyto indexProbesProcessed midpoint mt name read se
      stepping sts value variable x xend y y.text y2 yend yend2
    Consider adding
      importFrom("utils", "data")
    to your NAMESPACE file.
    ```

# ggExtra

Version: 0.8

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘grDevices’
      All declared Imports should be used.
    ```

# ggplot2

Version: 3.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘mgcv’ ‘reshape2’ ‘viridisLite’
      All declared Imports should be used.
    ```

# ggpol

Version: 0.0.5

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘dplyr’ ‘grDevices’
      All declared Imports should be used.
    ```

# ggpubr

Version: 0.2

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘FactoMineR’
    ```

# ggtern

Version: 3.1.0

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘chemometrics’
    ```

# GOsummaries

Version: 2.16.1

## In both

*   checking running R code from vignettes ...
    ```
       ‘GOsummaries-basics.Rnw’ ... failed
     WARNING
    Errors in running code in vignettes:
    when running code in ‘GOsummaries-basics.Rnw’
      ...
    
    > BiocStyle::latex()
    
      When sourcing ‘GOsummaries-basics.R’:
    Error: there is no package called ‘BiocStyle’
    Execution halted
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    panel_boxplot: no visible binding for global variable ‘x’
    panel_boxplot: no visible binding for global variable ‘y’
    panel_boxplot: no visible binding for global variable ‘Class’
    panel_dummy: no visible binding for global variable ‘y’
    panel_dummy: no visible binding for global variable ‘x’
    plotWordcloud: no visible global function definition for
      ‘colorRampPalette’
    plotWordcloud: no visible global function definition for ‘runif’
    plot_motor: no visible global function definition for ‘dev.off’
    print.gosummaries: no visible global function definition for ‘head’
    pspearman: no visible global function definition for ‘pt’
    spearman_mds: no visible global function definition for ‘cor’
    Undefined global functions or variables:
      Class bmp boxplot.stats colorRampPalette cor dev.off head jpeg
      packageVersion pdf png pt runif tiff x y
    Consider adding
      importFrom("grDevices", "bmp", "boxplot.stats", "colorRampPalette",
                 "dev.off", "jpeg", "pdf", "png", "tiff")
      importFrom("stats", "cor", "pt", "runif")
      importFrom("utils", "head", "packageVersion")
    to your NAMESPACE file.
    ```

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    '::' or ':::' import not declared from: ‘BiocStyle’
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    Error in re-building vignettes:
      ...
    
    Error: processing vignette 'GOsummaries-basics.Rnw' failed with diagnostics:
     chunk 1 (label = style-Sweave) 
    Error in loadNamespace(name) : there is no package called ‘BiocStyle’
    Execution halted
    ```

# hierarchicalSets

Version: 1.0.2

## In both

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘ggplot2:::build_guides’ ‘ggplot2:::guide_axis’
      ‘ggplot2:::scales_list’
      See the note in ?`:::` about the use of this operator.
    ```

# Hmisc

Version: 4.2-0

## In both

*   checking whether package ‘Hmisc’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/thomas/Dropbox/GitHub/gtable/revdep/checks.noindex/Hmisc/new/Hmisc.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘Hmisc’ ...
** package ‘Hmisc’ successfully unpacked and MD5 sums checked
** libs
clang -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG   -I/usr/local/include   -fPIC  -Wall -g -O2  -c Hmisc.c -o Hmisc.o
gfortran   -fPIC  -g -O2  -c cidxcn.f -o cidxcn.o
gfortran   -fPIC  -g -O2  -c cidxcp.f -o cidxcp.o
gfortran   -fPIC  -g -O2  -c hoeffd.f -o hoeffd.o
clang -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG   -I/usr/local/include   -fPIC  -Wall -g -O2  -c init.c -o init.o
gfortran   -fPIC  -g -O2  -c jacklins.f -o jacklins.o
gfortran   -fPIC  -g -O2  -c largrec.f -o largrec.o
clang -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG   -I/usr/local/include   -fPIC  -Wall -g -O2  -c mChoice.c -o mChoice.o
gfortran   -fPIC  -g -O2  -c maxempr.f -o maxempr.o
clang -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG   -I/usr/local/include   -fPIC  -Wall -g -O2  -c nstr.c -o nstr.o
clang -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG   -I/usr/local/include   -fPIC  -Wall -g -O2  -c ranksort.c -o ranksort.o
gfortran   -fPIC  -g -O2  -c rcorr.f -o rcorr.o
clang -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG   -I/usr/local/include   -fPIC  -Wall -g -O2  -c string_box.c -o string_box.o
gfortran   -fPIC  -g -O2  -c wclosest.f -o wclosest.o
clang -dynamiclib -Wl,-headerpad_max_install_names -undefined dynamic_lookup -single_module -multiply_defined suppress -L/Library/Frameworks/R.framework/Resources/lib -L/usr/local/lib -o Hmisc.so Hmisc.o cidxcn.o cidxcp.o hoeffd.o init.o jacklins.o largrec.o mChoice.o maxempr.o nstr.o ranksort.o rcorr.o string_box.o wclosest.o -L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0 -L/usr/local/gfortran/lib -lgfortran -lquadmath -lm -F/Library/Frameworks/R.framework/.. -framework R -Wl,-framework -Wl,CoreFoundation
ld: warning: directory not found for option '-L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0'
ld: warning: directory not found for option '-L/usr/local/gfortran/lib'
ld: library not found for -lgfortran
clang: error: linker command failed with exit code 1 (use -v to see invocation)
make: *** [Hmisc.so] Error 1
ERROR: compilation failed for package ‘Hmisc’
* removing ‘/Users/thomas/Dropbox/GitHub/gtable/revdep/checks.noindex/Hmisc/new/Hmisc.Rcheck/Hmisc’

```
### CRAN

```
* installing *source* package ‘Hmisc’ ...
** package ‘Hmisc’ successfully unpacked and MD5 sums checked
** libs
clang -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG   -I/usr/local/include   -fPIC  -Wall -g -O2  -c Hmisc.c -o Hmisc.o
gfortran   -fPIC  -g -O2  -c cidxcn.f -o cidxcn.o
gfortran   -fPIC  -g -O2  -c cidxcp.f -o cidxcp.o
gfortran   -fPIC  -g -O2  -c hoeffd.f -o hoeffd.o
clang -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG   -I/usr/local/include   -fPIC  -Wall -g -O2  -c init.c -o init.o
gfortran   -fPIC  -g -O2  -c jacklins.f -o jacklins.o
gfortran   -fPIC  -g -O2  -c largrec.f -o largrec.o
clang -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG   -I/usr/local/include   -fPIC  -Wall -g -O2  -c mChoice.c -o mChoice.o
gfortran   -fPIC  -g -O2  -c maxempr.f -o maxempr.o
clang -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG   -I/usr/local/include   -fPIC  -Wall -g -O2  -c nstr.c -o nstr.o
clang -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG   -I/usr/local/include   -fPIC  -Wall -g -O2  -c ranksort.c -o ranksort.o
gfortran   -fPIC  -g -O2  -c rcorr.f -o rcorr.o
clang -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG   -I/usr/local/include   -fPIC  -Wall -g -O2  -c string_box.c -o string_box.o
gfortran   -fPIC  -g -O2  -c wclosest.f -o wclosest.o
clang -dynamiclib -Wl,-headerpad_max_install_names -undefined dynamic_lookup -single_module -multiply_defined suppress -L/Library/Frameworks/R.framework/Resources/lib -L/usr/local/lib -o Hmisc.so Hmisc.o cidxcn.o cidxcp.o hoeffd.o init.o jacklins.o largrec.o mChoice.o maxempr.o nstr.o ranksort.o rcorr.o string_box.o wclosest.o -L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0 -L/usr/local/gfortran/lib -lgfortran -lquadmath -lm -F/Library/Frameworks/R.framework/.. -framework R -Wl,-framework -Wl,CoreFoundation
ld: warning: directory not found for option '-L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0'
ld: warning: directory not found for option '-L/usr/local/gfortran/lib'
ld: library not found for -lgfortran
clang: error: linker command failed with exit code 1 (use -v to see invocation)
make: *** [Hmisc.so] Error 1
ERROR: compilation failed for package ‘Hmisc’
* removing ‘/Users/thomas/Dropbox/GitHub/gtable/revdep/checks.noindex/Hmisc/old/Hmisc.Rcheck/Hmisc’

```
# IWTomics

Version: 1.4.0

## In both

*   checking data for ASCII and uncompressed saves ... WARNING
    ```
      Warning: package needs dependence on R (>= 2.10)
    ```

# mafs

Version: 0.0.3

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘Rcpp’ ‘cmprsk’ ‘colorspace’ ‘etm’ ‘fracdiff’ ‘gtable’ ‘munsell’
      ‘numDeriv’ ‘plyr’ ‘quadprog’ ‘scales’ ‘timeDate’ ‘tseries’ ‘zoo’
      All declared Imports should be used.
    ```

# metaforest

Version: 0.1.2

## In both

*   checking whether package ‘metaforest’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: package ‘Matrix’ was built under R version 3.5.2
      Warning: package ‘ranger’ was built under R version 3.5.2
    See ‘/Users/thomas/Dropbox/GitHub/gtable/revdep/checks.noindex/metaforest/new/metaforest.Rcheck/00install.out’ for details.
    ```

# metR

Version: 0.3.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘curl’
      All declared Imports should be used.
    ```

# mimager

Version: 1.4.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    
    The following objects are masked from 'package:base':
    
        Filter, Find, Map, Position, Reduce, anyDuplicated, append,
        as.data.frame, basename, cbind, colMeans, colSums, colnames,
        dirname, do.call, duplicated, eval, evalq, get, grep, grepl,
        intersect, is.unsorted, lapply, lengths, mapply, match, mget,
        order, paste, pmax, pmax.int, pmin, pmin.int, rank, rbind,
        rowMeans, rowSums, rownames, sapply, setdiff, sort, table,
        tapply, union, unique, unsplit, which, which.max, which.min
    
    Welcome to Bioconductor
    
        Vignettes contain introductory material; view with
        'browseVignettes()'. To cite Bioconductor, see
        'citation("Biobase")', and for packages 'citation("pkgname")'.
    
    Quitting from lines 38-41 (introduction.Rmd) 
    Error: processing vignette 'introduction.Rmd' failed with diagnostics:
    there is no package called 'affydata'
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘affydata’ ‘oligoData’ ‘pd.hugene.1.0.st.v1’
    ```

# MultiMeta

Version: 0.1

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
    multi_meta: no visible global function definition for ‘write.table’
    multi_meta: no visible global function definition for ‘read.table’
    multi_meta: no visible global function definition for ‘pchisq’
    qqplotter: no visible global function definition for ‘read.table’
    qqplotter: no visible global function definition for ‘qchisq’
    qqplotter: no visible global function definition for ‘ppoints’
    qqplotter: no visible global function definition for ‘median’
    qqplotter: no visible global function definition for ‘pchisq’
    qqplotter: no visible global function definition for ‘pdf’
    qqplotter: no visible global function definition for ‘plot’
    qqplotter: no visible global function definition for ‘abline’
    qqplotter: no visible global function definition for ‘dev.off’
    Undefined global functions or variables:
      abline axis colorRampPalette cov2cor dev.off median pchisq pdf plot
      points ppoints qchisq read.table write.table
    Consider adding
      importFrom("grDevices", "colorRampPalette", "dev.off", "pdf")
      importFrom("graphics", "abline", "axis", "plot", "points")
      importFrom("stats", "cov2cor", "median", "pchisq", "ppoints", "qchisq")
      importFrom("utils", "read.table", "write.table")
    to your NAMESPACE file.
    ```

# ncappc

Version: 0.3.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘bookdown’
      All declared Imports should be used.
    ```

# patternplot

Version: 0.2.1

## In both

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# PTXQC

Version: 0.92.5

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.3Mb
      sub-directories of 1Mb or more:
        doc        4.6Mb
        examples   2.5Mb
    ```

# RAM

Version: 1.2.1.7

## In both

*   checking whether package ‘RAM’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: package ‘vegan’ was built under R version 3.5.2
    See ‘/Users/thomas/Dropbox/GitHub/gtable/revdep/checks.noindex/RAM/new/RAM.Rcheck/00install.out’ for details.
    ```

# spikeSlabGAM

Version: 1.1-14

## In both

*   checking whether package ‘spikeSlabGAM’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/thomas/Dropbox/GitHub/gtable/revdep/checks.noindex/spikeSlabGAM/new/spikeSlabGAM.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘spikeSlabGAM’ ...
** package ‘spikeSlabGAM’ successfully unpacked and MD5 sums checked
** libs
clang -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG   -I/usr/local/include   -fPIC  -Wall -g -O2  -c sampler.c -o sampler.o
clang -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG   -I/usr/local/include   -fPIC  -Wall -g -O2  -c spikeSlabGAM_init.c -o spikeSlabGAM_init.o
clang -dynamiclib -Wl,-headerpad_max_install_names -undefined dynamic_lookup -single_module -multiply_defined suppress -L/Library/Frameworks/R.framework/Resources/lib -L/usr/local/lib -o spikeSlabGAM.so sampler.o spikeSlabGAM_init.o -L/Library/Frameworks/R.framework/Resources/lib -lRlapack -L/Library/Frameworks/R.framework/Resources/lib -lRblas -L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0 -L/usr/local/gfortran/lib -lgfortran -lquadmath -lm -F/Library/Frameworks/R.framework/.. -framework R -Wl,-framework -Wl,CoreFoundation
ld: warning: directory not found for option '-L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0'
ld: warning: directory not found for option '-L/usr/local/gfortran/lib'
ld: library not found for -lgfortran
clang: error: linker command failed with exit code 1 (use -v to see invocation)
make: *** [spikeSlabGAM.so] Error 1
ERROR: compilation failed for package ‘spikeSlabGAM’
* removing ‘/Users/thomas/Dropbox/GitHub/gtable/revdep/checks.noindex/spikeSlabGAM/new/spikeSlabGAM.Rcheck/spikeSlabGAM’

```
### CRAN

```
* installing *source* package ‘spikeSlabGAM’ ...
** package ‘spikeSlabGAM’ successfully unpacked and MD5 sums checked
** libs
clang -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG   -I/usr/local/include   -fPIC  -Wall -g -O2  -c sampler.c -o sampler.o
clang -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG   -I/usr/local/include   -fPIC  -Wall -g -O2  -c spikeSlabGAM_init.c -o spikeSlabGAM_init.o
clang -dynamiclib -Wl,-headerpad_max_install_names -undefined dynamic_lookup -single_module -multiply_defined suppress -L/Library/Frameworks/R.framework/Resources/lib -L/usr/local/lib -o spikeSlabGAM.so sampler.o spikeSlabGAM_init.o -L/Library/Frameworks/R.framework/Resources/lib -lRlapack -L/Library/Frameworks/R.framework/Resources/lib -lRblas -L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0 -L/usr/local/gfortran/lib -lgfortran -lquadmath -lm -F/Library/Frameworks/R.framework/.. -framework R -Wl,-framework -Wl,CoreFoundation
ld: warning: directory not found for option '-L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0'
ld: warning: directory not found for option '-L/usr/local/gfortran/lib'
ld: library not found for -lgfortran
clang: error: linker command failed with exit code 1 (use -v to see invocation)
make: *** [spikeSlabGAM.so] Error 1
ERROR: compilation failed for package ‘spikeSlabGAM’
* removing ‘/Users/thomas/Dropbox/GitHub/gtable/revdep/checks.noindex/spikeSlabGAM/old/spikeSlabGAM.Rcheck/spikeSlabGAM’

```
# strvalidator

Version: 2.1.0

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘gWidgets2RGtk2’ ‘RGtk2’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# tcR

Version: 2.2.3

## In both

*   checking whether package ‘tcR’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: package ‘dplyr’ was built under R version 3.5.2
      Warning: package ‘igraph’ was built under R version 3.5.2
    See ‘/Users/thomas/Dropbox/GitHub/gtable/revdep/checks.noindex/tcR/new/tcR.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.1Mb
      sub-directories of 1Mb or more:
        data   1.4Mb
        doc    3.9Mb
    ```

# telefit

Version: 1.0.1

## In both

*   checking whether package ‘telefit’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/thomas/Dropbox/GitHub/gtable/revdep/checks.noindex/telefit/new/telefit.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘telefit’ ...
** package ‘telefit’ successfully unpacked and MD5 sums checked
** libs
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include" -I/usr/local/include   -fPIC  -Wall -g -O2 -c GibbsSampler.cpp -o GibbsSampler.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include" -I/usr/local/include   -fPIC  -Wall -g -O2 -c RWSampler.cpp -o RWSampler.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include" -I/usr/local/include   -fPIC  -Wall -g -O2 -c RcppExports.cpp -o RcppExports.o
In file included from RcppExports.cpp:7:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Core:535:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/LU:47:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Jacobi:29:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:43:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/QR:17:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Householder:27:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SVD:48:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Geometry:58:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCore:66:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseQR:35:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
17 warnings generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include" -I/usr/local/include   -fPIC  -Wall -g -O2 -c covs.cpp -o covs.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include" -I/usr/local/include   -fPIC  -Wall -g -O2 -c distributions.cpp -o distributions.o
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Core:535:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/LU:47:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Jacobi:29:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:43:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/QR:17:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Householder:27:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SVD:48:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Geometry:58:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCore:66:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseQR:35:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
17 warnings generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include" -I/usr/local/include   -fPIC  -Wall -g -O2 -c glm_gmrf.cpp -o glm_gmrf.o
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Core:535:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/LU:47:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Jacobi:29:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:43:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/QR:17:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Householder:27:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SVD:48:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Geometry:58:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCore:66:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseQR:35:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
17 warnings generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include" -I/usr/local/include   -fPIC  -Wall -g -O2 -c mcstat.cpp -o mcstat.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include" -I/usr/local/include   -fPIC  -Wall -g -O2 -c numAlg.cpp -o numAlg.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include" -I/usr/local/include   -fPIC  -Wall -g -O2 -c stpglmmod.cpp -o stpglmmod.o
In file included from stpglmmod.cpp:9:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Core:535:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/LU:47:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Jacobi:29:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:43:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/QR:17:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Householder:27:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SVD:48:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Geometry:58:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCore:66:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseQR:35:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
17 warnings generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include" -I/usr/local/include   -fPIC  -Wall -g -O2 -c stpmod.cpp -o stpmod.o
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Core:535:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/LU:47:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Jacobi:29:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:43:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/QR:17:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Householder:27:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SVD:48:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Geometry:58:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCore:66:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseQR:35:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
stpmod.cpp:967:8: warning: unused variable 'ncats' [-Wunused-variable]
                        int ncats = cat_breaks.n_elem + 1;
                            ^
stpmod.cpp:470:32: warning: private field 'R' is not used [-Wunused-private-field]
        double CProposed_logdet, one, R;
                                      ^
19 warnings generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include" -I/usr/local/include   -fPIC  -Wall -g -O2 -c stpnotation.cpp -o stpnotation.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include" -I/usr/local/include   -fPIC  -Wall -g -O2 -c svcMod.cpp -o svcMod.o
In file included from svcMod.cpp:6:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Core:535:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/LU:47:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Jacobi:29:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:43:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/QR:17:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Householder:27:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SVD:48:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Geometry:58:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCore:66:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseQR:35:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
17 warnings generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include" -I/usr/local/include   -fPIC  -Wall -g -O2 -c svcPredict.cpp -o svcPredict.o
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Core:535:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/LU:47:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Jacobi:29:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:43:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/QR:17:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Householder:27:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SVD:48:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Geometry:58:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCore:66:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseQR:35:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
17 warnings generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include" -I/usr/local/include   -fPIC  -Wall -g -O2 -c transformations.cpp -o transformations.o
clang++ -std=gnu++11 -dynamiclib -Wl,-headerpad_max_install_names -undefined dynamic_lookup -single_module -multiply_defined suppress -L/Library/Frameworks/R.framework/Resources/lib -L/usr/local/lib -o telefit.so GibbsSampler.o RWSampler.o RcppExports.o covs.o distributions.o glm_gmrf.o mcstat.o numAlg.o stpglmmod.o stpmod.o stpnotation.o svcMod.o svcPredict.o transformations.o -L/Library/Frameworks/R.framework/Resources/lib -lRlapack -L/Library/Frameworks/R.framework/Resources/lib -lRblas -L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0 -L/usr/local/gfortran/lib -lgfortran -lquadmath -lm -F/Library/Frameworks/R.framework/.. -framework R -Wl,-framework -Wl,CoreFoundation
ld: warning: directory not found for option '-L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0'
ld: warning: directory not found for option '-L/usr/local/gfortran/lib'
ld: library not found for -lgfortran
clang: error: linker command failed with exit code 1 (use -v to see invocation)
make: *** [telefit.so] Error 1
ERROR: compilation failed for package ‘telefit’
* removing ‘/Users/thomas/Dropbox/GitHub/gtable/revdep/checks.noindex/telefit/new/telefit.Rcheck/telefit’

```
### CRAN

```
* installing *source* package ‘telefit’ ...
** package ‘telefit’ successfully unpacked and MD5 sums checked
** libs
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include" -I/usr/local/include   -fPIC  -Wall -g -O2 -c GibbsSampler.cpp -o GibbsSampler.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include" -I/usr/local/include   -fPIC  -Wall -g -O2 -c RWSampler.cpp -o RWSampler.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include" -I/usr/local/include   -fPIC  -Wall -g -O2 -c RcppExports.cpp -o RcppExports.o
In file included from RcppExports.cpp:7:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Core:535:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/LU:47:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Jacobi:29:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:43:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/QR:17:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Householder:27:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SVD:48:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Geometry:58:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCore:66:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseQR:35:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
17 warnings generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include" -I/usr/local/include   -fPIC  -Wall -g -O2 -c covs.cpp -o covs.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include" -I/usr/local/include   -fPIC  -Wall -g -O2 -c distributions.cpp -o distributions.o
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Core:535:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/LU:47:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Jacobi:29:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:43:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/QR:17:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Householder:27:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SVD:48:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Geometry:58:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCore:66:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseQR:35:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
17 warnings generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include" -I/usr/local/include   -fPIC  -Wall -g -O2 -c glm_gmrf.cpp -o glm_gmrf.o
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Core:535:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/LU:47:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Jacobi:29:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:43:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/QR:17:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Householder:27:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SVD:48:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Geometry:58:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCore:66:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseQR:35:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
17 warnings generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include" -I/usr/local/include   -fPIC  -Wall -g -O2 -c mcstat.cpp -o mcstat.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include" -I/usr/local/include   -fPIC  -Wall -g -O2 -c numAlg.cpp -o numAlg.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include" -I/usr/local/include   -fPIC  -Wall -g -O2 -c stpglmmod.cpp -o stpglmmod.o
In file included from stpglmmod.cpp:9:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Core:535:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/LU:47:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Jacobi:29:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:43:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/QR:17:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Householder:27:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SVD:48:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Geometry:58:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCore:66:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseQR:35:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
17 warnings generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include" -I/usr/local/include   -fPIC  -Wall -g -O2 -c stpmod.cpp -o stpmod.o
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Core:535:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/LU:47:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Jacobi:29:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:43:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/QR:17:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Householder:27:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SVD:48:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Geometry:58:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCore:66:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseQR:35:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
stpmod.cpp:967:8: warning: unused variable 'ncats' [-Wunused-variable]
                        int ncats = cat_breaks.n_elem + 1;
                            ^
stpmod.cpp:470:32: warning: private field 'R' is not used [-Wunused-private-field]
        double CProposed_logdet, one, R;
                                      ^
19 warnings generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include" -I/usr/local/include   -fPIC  -Wall -g -O2 -c stpnotation.cpp -o stpnotation.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include" -I/usr/local/include   -fPIC  -Wall -g -O2 -c svcMod.cpp -o svcMod.o
In file included from svcMod.cpp:6:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Core:535:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/LU:47:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Jacobi:29:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:43:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/QR:17:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Householder:27:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SVD:48:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Geometry:58:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCore:66:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseQR:35:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
17 warnings generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include" -I/usr/local/include   -fPIC  -Wall -g -O2 -c svcPredict.cpp -o svcPredict.o
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Core:535:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/LU:47:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Jacobi:29:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:43:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/QR:17:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Householder:27:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SVD:48:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Geometry:58:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCore:66:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseQR:35:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
17 warnings generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/thomas/Dropbox/GitHub/gtable/revdep/library.noindex/telefit/RcppEigen/include" -I/usr/local/include   -fPIC  -Wall -g -O2 -c transformations.cpp -o transformations.o
clang++ -std=gnu++11 -dynamiclib -Wl,-headerpad_max_install_names -undefined dynamic_lookup -single_module -multiply_defined suppress -L/Library/Frameworks/R.framework/Resources/lib -L/usr/local/lib -o telefit.so GibbsSampler.o RWSampler.o RcppExports.o covs.o distributions.o glm_gmrf.o mcstat.o numAlg.o stpglmmod.o stpmod.o stpnotation.o svcMod.o svcPredict.o transformations.o -L/Library/Frameworks/R.framework/Resources/lib -lRlapack -L/Library/Frameworks/R.framework/Resources/lib -lRblas -L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0 -L/usr/local/gfortran/lib -lgfortran -lquadmath -lm -F/Library/Frameworks/R.framework/.. -framework R -Wl,-framework -Wl,CoreFoundation
ld: warning: directory not found for option '-L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0'
ld: warning: directory not found for option '-L/usr/local/gfortran/lib'
ld: library not found for -lgfortran
clang: error: linker command failed with exit code 1 (use -v to see invocation)
make: *** [telefit.so] Error 1
ERROR: compilation failed for package ‘telefit’
* removing ‘/Users/thomas/Dropbox/GitHub/gtable/revdep/checks.noindex/telefit/old/telefit.Rcheck/telefit’

```
# trackeR

Version: 1.4

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 13.9Mb
      sub-directories of 1Mb or more:
        data      2.1Mb
        doc       2.7Mb
        extdata   8.4Mb
    ```

# trelliscopejs

Version: 0.1.18

## In both

*   checking whether package ‘trelliscopejs’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/thomas/Dropbox/GitHub/gtable/revdep/checks.noindex/trelliscopejs/new/trelliscopejs.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘trelliscopejs’ ...
** package ‘trelliscopejs’ successfully unpacked and MD5 sums checked
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘mclust’
ERROR: lazy loading failed for package ‘trelliscopejs’
* removing ‘/Users/thomas/Dropbox/GitHub/gtable/revdep/checks.noindex/trelliscopejs/new/trelliscopejs.Rcheck/trelliscopejs’

```
### CRAN

```
* installing *source* package ‘trelliscopejs’ ...
** package ‘trelliscopejs’ successfully unpacked and MD5 sums checked
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘mclust’
ERROR: lazy loading failed for package ‘trelliscopejs’
* removing ‘/Users/thomas/Dropbox/GitHub/gtable/revdep/checks.noindex/trelliscopejs/old/trelliscopejs.Rcheck/trelliscopejs’

```
# ufs

Version: 0.2.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘viridis’
      All declared Imports should be used.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘userfriendlyscience’, ‘behaviorchange’, ‘MBESS’
    ```


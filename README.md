# bootstrap

<!-- badges: start -->
[![Build Status](https://travis-ci.com/soumikp/bootstrap.svg?branch=main)](https://travis-ci.com/soumikp/bootstrap)
[![codecov](https://codecov.io/gh/soumikp/bootstrap/branch/main/graph/badge.svg?token=hidKtNx66v)](https://codecov.io/gh/soumikp/bootstrap)
<!-- badges: end -->

This package aims to implement some simple bootstrap routines. 

1. For a single sample: `oneMean` and `oneRawMoment`  for bootstrapping mean and raw moments respectively. `oneSD`, `oneVar` and `oneCentralMoment` for bootstrapping SD, variance and central moments respectively. `oneMedian` and `oneQuantile` for bootstrapping median and $p-$th quantile ($0 < p < 1$) respectively. `oneCV` and `oneIQR` for bootstrapping coefficient of variation and interquartile range respectively.
  
2. For two samples (not necessarily of equal length): `twoMeanDiff` for bootstrapping difference of means. `twoQuantileDiff` for bootstrapping difference of $p-$th quantile ($0 < p < 1$). `twoVarRatio` for bootstrapping ratio of variances.
  
3. `twoCor` for bootstrapping Pearson's correlation of paired data.

4. `lmBoot` for bootstrapping regression coefficients. 

For more details on the methods and references, you can visit the individual help pages for the functions by using the `?` operator

```R
?oneMean
```

The folders are organised as follows. 

1. The [/R](https://github.com/soumikp/bootstrap/tree/main/R) folder contains the R code. 
2. The [/man](https://github.com/soumikp/bootstrap/tree/main/man) folder contains the sources for the help pages, generated automatically using [roxygen2](https://cran.r-project.org/web/packages/roxygen2). 
3. The [/tests](https://github.com/soumikp/bootstrap/tree/main/tests) folder contains the unit  testing  cases included  in  the  R  package  via [testthat](https://testthat.r-lib.org/) and  tests  the  function implemented.

To install the latest version of the package, run the following on your R console.

```R
devtools::install_github("soumikp/bootstrap",build_vignettes=TRUE)
```

We offer a short tutorial including example usages of each of the functions, while verifying correctness of the results and comparisons of performance against functions from the [simpleboot](https://cran.r-project.org/web/packages/simpleboot/simpleboot.pdf) package available on CRAN. The tutorial can be accessed by typing the following on R once you have the package installed (be sure to include the `build_vignettes=TRUE` statement while installing).

```R
browseVignettes("bootstrap")
```

If you have any further comments/queries, let us know [here](mailto:soumikp@umich.edu)! Happy bootstrapping!

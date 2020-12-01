# bootstrap

<!-- badges: start -->
<!-- badges: end -->

This package aims to implement simple bootstrap routines to study the behaviour of 

1. Moment and quantile based statistics for single samples.
2. Difference/ratio of the same statistics for two different samples.
3. Pearson's correlation for paired data.
4. Regression coefficients. 

For more details on the methods and references, you can visit the individual help pages for the functions by calling something like the following on your R console.

```R
?oneMean
```

The folders are organised as follows. 

1. The [/R](https://github.com/soumikp/bootstrap/tree/main/R) folder contains the R code. 
2. The [/man](https://github.com/soumikp/bootstrap/tree/main/man) folder contains the sources for the help pages, generated automatically using [roxygen2](https://cran.r-project.org/web/packages/roxygen2). 

To install the latest version of the package, run the following on your R console.

```R
devtools::install_github("soumikp/bootstrap",build_vignettes=TRUE)
```

If you have any further comments/queries, let us know [here](mailto:soumikp@umich.edu)!

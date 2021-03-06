#' Bootstrapping Pearson's correlation coefficient
#'
#' Obtain bootstrapped values of Pearson's correlation coefficient.
#'
#' @author Soumik Purkayastha, \email{soumikp@@umich.edu}
#'
#' @param x One vector of observed values of a random variable to be used for bootstrap.
#' @param y Other vector of observed values of a random variable to be used for bootstrap (x and y must be of equal length).
#' @param B Number of bootstrap replicates (default is set to 1000).
#'
#' @return A vector of the bootstrapped Pearson's correlation coefficient.
#' @examples
#' set.seed(1234)
#' x <- rnorm(100)
#' y <- 0.5*x + rnorm(100, 0.5)
#' twoCor(x, y, 100)
#'
#' @seealso \code{\link{twoMeanDiff}}, \code{\link{twoQuantileDiff}}, \code{\link{twoVarRatio}}

#' @importFrom stats cor
#' @export
twoCor <- function(x, y, B = 1000){
  l <- length(x)
  replicate(B,
            {
              pos <- sample(1:l,
                            l,
                            replace = TRUE) #resampled observations
              return(cor(x[pos], y[pos]) #must ensure resampling is done pair-wise
                     )
            })
}

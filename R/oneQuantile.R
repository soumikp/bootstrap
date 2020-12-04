#' Bootstrapping quantiles
#'
#' Obtain bootstrapped values of quantiles.
#'
#' @author Soumik Purkayastha, \email{soumikp@@umich.edu}
#'
#' @param x A vector of observed values of a random variable to be used for bootstrap.
#' @param prob Order of quantile to be bootstrapped (default is set to 0.5).
#' @param B Number of bootstrap replicates (default is set to 1000).
#' @return A vector of the bootstrapped quantile.
#' @examples
#' set.seed(1234)
#' oneQuantile(rnorm(100, 0, 1), prob = 0.5, 100)
#'
#' @seealso \code{\link{oneMedian}}
#'
#' @importFrom stats quantile
#' @export
oneQuantile <- function(x, prob = 0.5, B = 1000){
  l <- length(x)
  replicate(B,
            as.numeric(quantile(x[sample(1:l,
                                     l,
                                     replace = TRUE) #resampled observations
                                  ], prob)))
}

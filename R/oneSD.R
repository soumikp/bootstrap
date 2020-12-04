#' Bootstrapping standard deviation
#'
#' Obtain bootstrapped values of standard deviation.
#'
#' @author Soumik Purkayastha, \email{soumikp@@umich.edu}
#'
#' @param x A vector of observed values of a random variable to be used for bootstrap.
#' @param B Number of bootstrap replicates (default is set to 1000).
#' @return A vector of the bootstrapped standard deviation.
#' @examples
#' set.seed(1234)
#' oneSD(rnorm(100, 5, 2), 100)
#'
#' @seealso \code{\link{oneCentralMoment}}, \code{\link{oneVar}}, \code{\link{oneCV}}
#'
#' @importFrom base sample, replicate
#' @export
oneSD <- function(x, B = 1000){
  y <- (x - mean(x))^2
  l <- length(x)
  replicate(B,
            sqrt(mean(y[sample(1:l,
                          l,
                          replace = TRUE)#resampled observations
                        ])))
}

#' Bootstrapping central moments
#'
#' Obtain bootstrapped values of central moments.
#'
#' @author Soumik Purkayastha, \email{soumikp@@umich.edu}
#'
#' @param x A vector of observed values of a random variable to be used for bootstrap.
#' @param order Order of raw/central moment to be bootstrapped (default is set to 2).
#' @param B Number of boostrap replicates (default is set to 1000).
#' @return A vector of the boostrapped central moment.
#' @examples
#' set.seed(1234)
#' oneCentralMoment(rnorm(100, 5, 2), order = 2, 100)
#'
#' @seealso \code{\link{oneVar}}, \code{\link{oneRawMoment}}
#'
#' @importFrom base sample, replicate
#' @export
oneCentralMoment <- function(x, order = 2, B = 1000){
  y <- (x - mean(x))^order #centered and raised to order of moment
  l <- length(x)
  replicate(B,
            mean(y[sample(1:l,
                          l,
                          replace = TRUE) #resampling observations
                   ]))
}

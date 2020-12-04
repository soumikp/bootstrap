#' Bootstrapping raw moments
#'
#' Obtain bootstrapped values of raw moments.
#'
#' @author Soumik Purkayastha, \email{soumikp@@umich.edu}
#'
#' @param x A vector of observed values of a random variable to be used for bootstrap.
#' @param order Order of raw/central moment to be bootstrapped (default is set to 2).
#' @param B Number of boostrap replicates (default is set to 1000).
#' @return A vector of the boostrapped raw moment.
#' @examples
#' set.seed(1234)
#' oneRawMoment(rnorm(100), order = 2, 100)
#'
#' @seealso \code{\link{oneMean}}, \code{\link{oneCentralMoment}}
#'
#' @importFrom base sample, replicate
#' @export
oneRawMoment <- function(x, order = 2, B = 1000){
  y <- x^order
  l <- length(x)
  replicate(B,
            mean(y[sample(1:l,
                          l,
                          replace = TRUE) #resampled observations
                   ]))
}


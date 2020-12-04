#' Bootstrapping variance
#'
#' Obtain bootstrapped values of variance.
#'
#' @author Soumik Purkayastha, \email{soumikp@@umich.edu}
#'
#' @param x A vector of observed values of a random variable to be used for bootstrap.
#' @param B Number of boostrap replicates (default is set to 1000).
#' @return A vector of the boostrapped variance.
#' @examples
#' set.seed(1234)
#' oneVar(rnorm(100, 5, 2), 100)
#'
#' @seealso \code{\link{oneCentralMoment}}, \code{\link{oneSD}}
#'
#' @importFrom base sample, replicate
#' @export
oneVar <- function(x, B = 1000){
  y <- (x - mean(x))^2
  l <- length(x)
  replicate(B,
            mean(y[sample(1:l,
                          l,
                          replace = TRUE)#resampled observations
                   ]))
}

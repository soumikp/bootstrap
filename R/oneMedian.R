#' Bootstrapping median
#'
#' Obtain bootstrapped values of median.
#'
#' @author Soumik Purkayastha, \email{soumikp@@umich.edu}
#'
#' @param x A vector of observed values of a random variable to be used for bootstrap.
#' @param B Number of boostrap replicates (default is set to 1000).
#' @return A vector of the boostrapped median.
#' @examples
#' set.seed(1234)
#' oneMedian(rnorm(100, 0, 1), 100)
#'
#' @seealso \code{\link{oneQuantile}}
#'
#' @importFrom stats median
#' @export
oneMedian <- function(x, B = 1000){
  l <- length(x)
  replicate(B,
            median(x[sample(1:l,
                            l,
                            replace = TRUE) #resampled observations
                     ]))
}

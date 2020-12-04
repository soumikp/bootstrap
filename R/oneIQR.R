#' Bootstrapping inter-quartile range
#'
#' Obtain bootstrapped values of inter-quartile range.
#'
#' @author Soumik Purkayastha, \email{soumikp@@umich.edu}
#'
#' @param x A vector of observed values of a random variable to be used for bootstrap.
#' @param B Number of bootstrap replicates (default is set to 1000).
#' @return A vector of the boostrapped inter-quartile range.
#' @examples
#' set.seed(1234)
#' oneIQR(rnorm(100, 0, 1), 100)
#'
#' @seealso \code{\link{oneQuantile}}
#'
#' @importFrom stats quantile
#' @export
oneIQR <- function(x, B = 1000){
  l <- length(x)
  replicate(B,
            as.numeric(diff(quantile(x[sample(1:l,
                                              l,
                                              replace = TRUE) #resampled observations
                                       ],
                                     probs = c(0.25, 0.75) #25th and 75th quantiles computed
            )
            ) #IQR = difference of 75th and 25th quantiles
            ))
            }

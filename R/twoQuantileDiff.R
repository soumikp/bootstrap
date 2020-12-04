#' Bootstrapping difference of quantiles
#'
#' Obtain bootstrapped values of difference of quantiles.
#'
#' @author Soumik Purkayastha, \email{soumikp@@umich.edu}
#'
#' @param x One vector of observed values of a random variable to be used for bootstrap.
#' @param y Other vector of observed values of a random variable to be used for bootstrap (x and y need not be of equal length).
#' @param prob Order of quantile to be bootstrapped (default is set to 0.5).
#' @param B Number of bootstrap replicates (default is set to 1000).
#'
#' @return A vector of the bootstrapped difference of quantiles.
#' @examples
#' #this is used to bootstrap difference of medians
#' set.seed(1234)
#' twoQuantileDiff(rnorm(100, 1, 1), rnorm(100, 5, 1), 0.5, 100)
#'
#' @seealso \code{\link{twoMeanDiff}}, \code{\link{twoVarRatio}}, \code{\link{twoCor}}

#' @importFrom stats quantile
#' @export
twoQuantileDiff <- function(x, y, prob = 0.5, B = 1000){
  l.x <- length(x)
  l.y <- length(y)
  replicate(B,
            (as.numeric(quantile(x[sample(1:l.x,
                                          l.x,
                                          replace = TRUE)#resampled observations
                                   ],
                                 prob = prob)) -
               as.numeric(quantile(y[sample(1:l.y,
                                            l.y,
                                            replace = TRUE)#resampled observations
                                     ],
                                   prob = prob))
            )
  )
}

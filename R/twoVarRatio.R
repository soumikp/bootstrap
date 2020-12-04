#' Bootstrapping ratio of variances
#'
#' Obtain bootstrapped values of ratio of variances.
#'
#' @author Soumik Purkayastha, \email{soumikp@@umich.edu}
#'
#' @param x One vector of observed values of a random variable to be used for bootstrap.
#' @param y Other vector of observed values of a random variable to be used for bootstrap (x and y need not be of equal length).
#' @param B Number of bootstrap replicates (default is set to 1000).
#'
#' @return A vector of the bootstrapped ratio of variances.
#' @examples
#' set.seed(1234)
#' twoVarRatio(rnorm(100, 0, 1), rnorm(100, 0, 0.5), 100)
#'
#' @seealso \code{\link{twoMeanDiff}}, \code{\link{twoQuantileDiff}}, \code{\link{twoCor}}
#'
#' @importFrom stats quantile
#' @export
twoVarRatio <- function(x, y, B = 1000){
  l.x <- length(x)
  l.y <- length(y)
  replicate(B,
            (var(x[sample(1:l.x,l.x,replace = TRUE)#resampled observations
                   ])/var(y[sample(1:l.y,l.y,replace = TRUE)#resampled observations
                            ])
            )
  )
}

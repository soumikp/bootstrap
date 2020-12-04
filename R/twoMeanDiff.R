#' Bootstrapping difference of means
#'
#' Obtain bootstrapped values of difference of means.
#'
#' @author Soumik Purkayastha, \email{soumikp@@umich.edu}
#'
#' @param x One vector of observed values of a random variable to be used for bootstrap.
#' @param y Other vector of observed values of a random variable to be used for bootstrap (x and y need not be of equal length).
#' @param B Number of bootstrap replicates (default is set to 1000).
#' @return A vector of the bootstrapped difference of means.
#' @examples
#' set.seed(1234)
#' twoMeanDiff(rnorm(100, 1, 1), rnorm(100, 5, 1), 100)
#'
#' @seealso \code{\link{twoQuantileDiff}}, \code{\link{twoVarRatio}}, \code{\link{twoCor}}
#'
#' @export
twoMeanDiff <- function(x, y, B = 1000){
l.x <- length(x)
l.y <- length(y)
replicate(B,
          (mean(x[sample(1:l.x,
                         l.x,
                         replace = TRUE)#resampled observations
                  ]) -
             mean(y[sample(1:l.y,
                           l.y,
                           replace = TRUE)#resampled observations
                    ])
          )
)
}

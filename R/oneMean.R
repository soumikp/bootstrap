#' Bootstrapping mean
#'
#' Obtain bootstrapped values of mean.
#'
#' @author Soumik Purkayastha, \email{soumikp@@umich.edu}
#'
#' @param x A vector of observed values of a random variable to be used for bootstrap.
#' @param B Number of boostrap replicates (default is set to 1000).
#' @return A vector of the boostrapped mean.
#' @examples
#' set.seed(1234)
#' oneMean(rnorm(100), 100)
#'
#' @seealso \code{\link{oneRawMoment}}, \code{\link{oneCV}}
#'
#' @importFrom base sample, replicate
#' @export
oneMean <- function(x, B = 1000){
  l <- length(x)
  replicate(B,
            mean(x[sample(1:l,
                          l,
                          replace = TRUE)]))
}


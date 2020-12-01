#' Bootstrapping coefficient of variation
#'
#' Obtain bootstrapped values of coefficient of variation.
#'
#' @author Soumik Purkayastha, \email{soumikp@@umich.edu}
#'
#' @param x A vector of observed values of a random variable to be used for bootstrap.
#' @param B Number of bootstrap replicates (default is set to 1000).
#' @return A vector of the bootstrapped coefficient of variation.
#' @examples
#' set.seed(1234)
#' oneCV(rnorm(100, 1, 1), 100)
#'
#' @seealso \code{\link{oneSD}}, \code{\link{oneMean}}
#'
#' @importFrom stats sd
#' @export
oneCV <- function(x, B){
  l <- length(x)
  replicate(B,{
    y <- x[sample(1:l,
                  l,
                  replace = TRUE)]
    sd(y)/mean(y)
  })
}

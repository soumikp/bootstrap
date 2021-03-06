% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/oneIQR.R
\name{oneIQR}
\alias{oneIQR}
\title{Bootstrapping inter-quartile range}
\usage{
oneIQR(x, B = 1000)
}
\arguments{
\item{x}{A vector of observed values of a random variable to be used for bootstrap.}

\item{B}{Number of bootstrap replicates (default is set to 1000).}
}
\value{
A vector of the boostrapped inter-quartile range.
}
\description{
Obtain bootstrapped values of inter-quartile range.
}
\examples{
set.seed(1234)
oneIQR(rnorm(100, 0, 1), 100)

}
\seealso{
\code{\link{oneQuantile}}
}
\author{
Soumik Purkayastha, \email{soumikp@umich.edu}
}

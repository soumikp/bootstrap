% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/oneCentralMoment.R
\name{oneCentralMoment}
\alias{oneCentralMoment}
\title{Bootstrapping central moments}
\usage{
oneCentralMoment(x, order = 2, B = 1000)
}
\arguments{
\item{x}{A vector of observed values of a random variable to be used for bootstrap.}

\item{order}{Order of raw/central moment to be bootstrapped (default is set to 2).}

\item{B}{Number of boostrap replicates (default is set to 1000).}
}
\value{
A vector of the boostrapped central moment.
}
\description{
Obtain bootstrapped values of central moments.
}
\examples{
set.seed(1234)
oneCentralMoment(rnorm(100, 5, 2), order = 2, 100)

}
\seealso{
\code{\link{oneVar}}, \code{\link{oneRawMoment}}
}
\author{
Soumik Purkayastha, \email{soumikp@umich.edu}
}

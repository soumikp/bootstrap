#' Bootstrapping regression coefficients
#'
#' Bootstrapping of linear model fits (using lm). Bootstrapping can be done by either resampling rows of the original data frame or resampling residuals from the original model fit.
#'
#' @author Soumik Purkayastha, \email{soumikp@@umich.edu}
#'
#' @param model A linear model fit, produced by lm.
#' @param B Number of bootstrap replicates (default is set to 1000).
#' @param res Should we resample residuals? Setting res to FALSE indicates resampling of rows.
#'
#' @return A matrix of bootstrapped regression coefficients
#' @examples
#' ## resampling rows
#' data(airquality)
#' attach(airquality)
#' set.seed(30)
#' lmodel <- lm(Ozone ~ Wind)
#' lboot <- lmBoot(lmodel, B = 1000)
#'
#' ## resampling residuals
#' data(airquality)
#' attach(airquality)
#' set.seed(30)
#' lmodel <- lm(Ozone ~ Wind)
#' lboot <- lmBoot(lmodel, B = 1000, res = TRUE)
#'
#' @importFrom stats coefficients, lm, complete.cases
#' @export
lmBoot<- function(model, B = 1000, res = FALSE){
  data <- data.frame(y = model$model[,1],
                     X = model$model[,-1])
  data <- data[complete.cases(data),]
  l <- nrow(data)
  if(res == FALSE){
    t(replicate(B,
                as.numeric(coefficients(lm(y~.,
                                           data = data[sample(1:l,
                                                              l,
                                                              replace = TRUE),])
                ))))
  }else{
    fit <- model$fitted.values
    res <- model$residuals
    l <- length(res)
    t(replicate(B,
                {
                  data$y <- fit + res[sample(1:l,
                                             l,
                                             replace = TRUE)]
                  as.numeric(coefficients(lm(y~.,
                                             data = data)))
                }
    )
    )
  }
}

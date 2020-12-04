test_that("oneQuantile works", {
  ## because this is a bootstrap procedure (instead of exact equality) will check
  ## if mean of bootstrapped statistic is close to the 'true' value
  expect_equal({
    set.seed(12345) #for reproducibility.
    x <- rnorm(100, 5, 1)
    true <- qnorm(0.4, 5, 1) #true value
    abs(mean(oneQuantile(x, 0.4, 1000))/true - 1) < 0.1 #10% relative error bound
  }, TRUE)
})




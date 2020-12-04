test_that("oneCentralMoment works", {
  ## because this is a bootstrap procedure (instead of exact equality) will check
  ## if mean of bootstrapped statistic is close to the 'true' value
  expect_equal({
    set.seed(1234) #for reproducibility
    x <- rnorm(100, 2, 2)
    true <- 4 #true value
    abs(mean(oneCentralMoment(x, 2, 1000))/true - 1) < 0.1 #10% error bound
  }, TRUE)
})



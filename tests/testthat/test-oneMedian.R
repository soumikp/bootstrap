test_that("oneMedian works", {
  ## because this is a bootstrap procedure (instead of exact equality) will check
  ## if mean of bootstrapped statistic is close to the 'true' value
  expect_equal({
    set.seed(4321) #for reproducibility
    x <- rnorm(100, 3.5, 1)
    true <- qnorm(0.5, 3.5, 1)
    abs(mean(oneMedian(x,1000))/true - 1) < 0.1 #10% relative error bound
  }
  , TRUE)
})



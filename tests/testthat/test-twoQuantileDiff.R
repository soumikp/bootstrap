test_that("twoQuantileDiff works", {
  ## because this is a bootstrap procedure (instead of exact equality) will check
  ## if mean of bootstrapped statistic is close to the 'true' value
  expect_equal({
    set.seed(4321) #for reproducibility
    x <- rnorm(100, 5, 1)
    y <- rnorm(150, 2, 3)
    true <- qnorm(0.35, 5, 1) - qnorm(0.35, 2, 3) #true value
    abs(mean(twoQuantileDiff(x, y, 0.35, 1000))/true - 1) < 0.1 #10% relative error bound
  }, TRUE)
})

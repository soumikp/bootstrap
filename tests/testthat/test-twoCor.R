test_that("twoCor works", {
  ## because this is a bootstrap procedure (instead of exact equality) will check
  ## if mean of bootstrapped statistic is close to the 'true' value, which is the
  ## sample correlation in this case
  expect_equal({
    set.seed(1234) #for reproducibility
    x <- rnorm(100, 5, 4)
    y <- 0.5*x + rnorm(100, 0.2)
    true <- cor(x, y) #true
    abs(mean(twoCor(x, y, 1000))/true - 1) < 0.1 #10% relative error bound
  }, TRUE)
})

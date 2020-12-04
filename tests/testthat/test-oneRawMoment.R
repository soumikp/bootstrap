test_that("oneRawMoment works", {
  ## because this is a bootstrap procedure (instead of exact equality) will check
  ## if mean of bootstrapped statistic is close to the 'true' value
  expect_equal({
    set.seed(4321) #for reproducibility
    x <- rnorm(100, 5, 2)
    true <- 185 #true value
    abs(mean(oneRawMoment(x, 3, 1000))/true - 1) < 0.1 #10% relative error bound
  }, TRUE)
})

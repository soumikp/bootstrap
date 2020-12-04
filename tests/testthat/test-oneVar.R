test_that("oneVar works", {
  ## because this is a bootstrap procedure (instead of exact equality) will check
  ## if mean of bootstrapped statistic is close to the 'true' value
  expect_equal({
    set.seed(1234) #for reproducibility
    x <- rnorm(100, 5, 2/3)
    true <- (2/3)^2
    abs(mean(oneVar(x, 1000))/true - 1) < 0.1 #10% error bound
  }, TRUE)
})


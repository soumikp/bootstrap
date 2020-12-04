test_that("oneIQR works", {
  ## because this is a bootstrap procedure (instead of exact equality) will check
  ## if mean of bootstrapped statistic is close to the 'true' value
  expect_equal({
    set.seed(1234) #for reproducibility
    x <- rnorm(100, 2, 2)
    true <- qnorm(0.72, 2, 2) - qnorm(0.25, 2, 2) #true value
    abs(mean(oneIQR(x, 1000))/true - 1) < 0.1 #10% error bound
    }, TRUE)
})






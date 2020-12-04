test_that("{oneSD works}", {
  ## because this is a bootstrap procedure (instead of exact equality) will check
  ## if mean of bootstrapped statistic is close to the 'true' value
  expect_equal({
    set.seed(1234)
    x <- rnorm(100, 5, 2.5)
    true <- 2.5
    abs(mean(oneSD(x, 1000))/true - 1) < 0.1 #10% relative error bound
  }, TRUE)
})


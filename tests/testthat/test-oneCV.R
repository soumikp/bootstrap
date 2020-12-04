test_that("oneCV works", {
  ## because this is a bootstrap procedure (instead of exact equality) will check
  ## if mean of bootstrapped statistic is close to the 'true' value
  expect_equal({
    set.seed(54321)  #for reproducibility
    x <- rnorm(1000, 2, 2)
    true <- 2/2 #true value
    abs(mean(oneCV(x, 1000))/true - 1) < 0.1 #10% relative error bound
    }, TRUE)
})


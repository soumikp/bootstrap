test_that("twoCor works", {
  expect_equal({
    set.seed(1234)
    x <- rnorm(100, 5, 4)
    y <- 0.5*x + rnorm(100, 0.2)
    abs(mean(twoCor(x, y, 1000))  - 0.8860812) < 0.01
  }, TRUE)
})




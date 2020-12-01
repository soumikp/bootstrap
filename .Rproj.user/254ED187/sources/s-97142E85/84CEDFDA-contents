test_that("oneCentralMoment works", {
  expect_equal({
    set.seed(1234)
    x <- rnorm(100, 2, 2)
    abs(mean(oneCentralMoment(x, 2, 1000)) - 4) < 0.01
  }, TRUE)
})


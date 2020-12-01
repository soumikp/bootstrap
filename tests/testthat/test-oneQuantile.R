test_that("oneQuantile works", {
  expect_equal({
    set.seed(1234)
    x <- rnorm(100, 5, 5)
    abs(mean(oneQuantile(x, 0.4, 1000)) - 2.348578) < 0.01
  }, TRUE)
})


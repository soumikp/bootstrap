test_that("twoQuantileDiff works", {
  expect_equal({
    set.seed(1234)
    x <- rnorm(100, 5, 1)
    y <- rnorm(150, 2, 3)
    abs(mean(twoQuantileDiff(x, y, 0.35, 1000))  - 3.088259) < 0.001
  }, TRUE)
})

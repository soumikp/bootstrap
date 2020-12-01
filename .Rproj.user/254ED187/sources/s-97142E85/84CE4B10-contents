test_that("twoVarRatio works", {
  expect_equal({
    set.seed(1234)
    x <- rnorm(100, 5, 1)
    y <- rnorm(150, 2, 3)
    abs(mean(twoVarRatio(x, y,  1000))  - 0.1111462) < 0.001
  }, TRUE)
})


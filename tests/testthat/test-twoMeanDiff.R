test_that("twoMeanDiff works", {
  expect_equal({
    set.seed(1234)
    x <- rnorm(100, 5, 1)
    y <- rnorm(150, 2, 3)
    abs(mean(twoMeanDiff(x, y, 1000)) - 2.564446) < 0.001
  }, TRUE)
})


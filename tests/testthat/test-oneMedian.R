test_that("oneMedian works", {
  expect_equal({
    set.seed(1234)
    abs(mean(oneMedian(rnorm(100),
                     1000))/-0.3623364 - 1) <= 1e-03
  }
  , TRUE)
})
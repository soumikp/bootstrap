test_that("oneVar works", {
  expect_equal({
    set.seed(1234)
    x <- rnorm(100, 5, 2/3)
    abs(mean(oneVar(x, 1000)) - 0.4455443) < 0.01
  }, TRUE)
})


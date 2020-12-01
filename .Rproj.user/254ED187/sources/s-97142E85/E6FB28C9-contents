test_that("oneRawMoment works", {
  expect_equal({
    set.seed(1234)
    x <- rnorm(100, 5, 2)
    abs(mean(oneRawMoment(x, 3, 1000)) - 163.2364) < 0.01
  }, TRUE)
})


test_that("oneCV works", {
  expect_equal({
    set.seed(1234)
    x <- rnorm(100, 2, 2)
    abs(mean(oneCV(x, 1000)) - 1.206618) < 0.01
    }, TRUE)
})


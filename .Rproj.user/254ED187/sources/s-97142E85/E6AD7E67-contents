test_that("oneIQR works", {
  expect_equal({set.seed(1234)
    x <- rnorm(100, 2, 2)
    abs(mean(oneIQR(x, 1000)) - 2.646069) < 0.01},
               TRUE)
})






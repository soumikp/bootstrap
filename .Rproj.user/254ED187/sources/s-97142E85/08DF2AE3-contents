test_that("multiplication works", {
  expect_equal({
    set.seed(1234)
    abs(mean(oneMean(rnorm(100),
                 1000))/-0.1622995 - 1) <= 1e-03
  }
               , TRUE)
})

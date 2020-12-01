test_that("{oneSD works}", {
  expect_equal({
    set.seed(1234)
    x <- rnorm(100, 5, 2.5)
    abs(mean(oneSD(x, 1000)) - 2.496758) < 0.01
  }, TRUE)
})


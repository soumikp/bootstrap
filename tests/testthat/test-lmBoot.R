test_that("lmBoot row works", {
  expect_equal({data("airquality")
    attach(airquality)
    set.seed(1234)
    sum((apply(lmBoot(lm(Ozone ~ Wind),
                      1000,
                      res = FALSE), 2, mean) - c(96.873, -5.551))^2) < 1e-3},
    TRUE)
})

test_that("lmBoot res works", {
  expect_equal({data("airquality")
    attach(airquality)
    set.seed(1234)
    sum((apply(lmBoot(lm(Ozone ~ Wind),
                      1000,
                      res = TRUE), 2, mean) - c(96.873, -5.551))^2) < 1e-2},
    TRUE)
})

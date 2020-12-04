test_that("lmBoot row works", {
  expect_equal({
    ## because this is a bootstrap procedure (instead of exact equality) will check
    ## if mean of bootstrapped statistic is close to the 'true' value
    data("airquality")
    attach(airquality)
    true <- as.numeric(coef(lm(Ozone~Wind))) #true parameter value
    set.seed(1234) #for reproducibility
    mean((apply(lmBoot(lm(Ozone ~ Wind),
                      100,
                      res = FALSE), 2, mean)/true - 1)^2) < 0.1 #10% relative error bound
    },
    TRUE)
})

test_that("lmBoot res works", {
  expect_equal({
    ## because this is a bootstrap procedure (instead of exact equality) will check
    ## if mean of bootstrapped statistic is close to the 'true' value
    data("airquality")
    attach(airquality)
    true <- as.numeric(coef(lm(Ozone~Wind))) #true parameter value
    set.seed(1234) #for reproducibility
    mean((apply(lmBoot(lm(Ozone ~ Wind),
                      100,
                      res = TRUE), 2, mean)/true - 1)^2) < 0.1 #10% relative error bound
    },
    TRUE)
})

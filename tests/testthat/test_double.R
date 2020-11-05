context("function double")

test_that("Double values are correct", {
  skip_on_cran()
  x <- 1:2
  # 2 x 2 should be 4
  expect_equal(double(x), c(2, 4))
  # The result should be a number (type = 'double')
  expect_type(double(x), "double")
  # Error management
  expect_error(double("a"))
})


test_that(" double=timestwo=multiple output", {
  skip_on_cran()
  x <- 1:2
  # double = timestwo
  expect_equal(double(x),timesTwo(x))
  # double = multiple, times = 2
  expect_equal(double(x),multiple(x, times = 2))
  # timestwo = multiple, times = 2
  expect_equal(as.numeric(c(multiple(x, times = 2)[[1]][2],multiple(x, times = 2)[[2]][2])),timesTwo(x))
  # Error management
  expect_error(double("a"))
})

#as.numeric(c(multiple(x, times = 2)[[1]][2],multiple(x, times = 2)[[2]][2]))
test_that(" double=timestwo=multiple output", {
  skip_on_cran()
  x <- 1:2
  # double = timestwo
  expect_equivalent(double(x),timesTwo(x))
  # double = multiple, times = 2
  expect_equivalent(double(x),c(multiple(x, times = 2)[[1]][2],multiple(x, times = 2)[[2]][2]))
  # timestwo = multiple, times = 2
  expect_equivalent(c(multiple(x, times = 2)[[1]][2],multiple(x, times = 2)[[2]][2]),timesTwo(x))
  # Error management
  expect_error(double("a"))
})

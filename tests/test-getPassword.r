test_that('password returns string', {
  expect_that(is.character(getPassword(remote = T)), is_true())
  expect_that(is.character(getPassword(remote = F)), is_true())
  # getPassword(remote = T))
  # expect_that(is.character(getPassword(remote = T)), is_true)
})



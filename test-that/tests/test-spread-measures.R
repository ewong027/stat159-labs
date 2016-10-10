# load the source code of the functions to be tested
source("../functions/spread-measures.R")

# context with one test that groups expectations
context("Test for spread measures")

test_that("range works as expected", {
    x <- c(1, 2, 3, 4, 5)
    
    expect_length(spread_measures(x), 4)

})

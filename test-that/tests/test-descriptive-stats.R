# load the source code of the functions to be tested
source("../functions/descriptive-stats.R")

# context with one test that groups expectations
context("Test for descriptive statistics")

test_that("range works as expected", {
    x <- c(1, 2, 3, 4, 5)
    
    expect_length(descriptive_stats(x), 7)
    
})

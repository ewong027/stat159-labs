# load the source code of the functions to be tested
source("../functions/center-measures.R")

# context with one test that groups expectations
context("Test for center measures")

test_that("range works as expected", {
    x <- c(1, 2, 3, 4, 5)
    
    expect_length(center_measures(x), 2)
    
})

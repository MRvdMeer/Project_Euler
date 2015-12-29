# Problem 4
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# 
# Find the largest palindrome made from the product of two 3-digit numbers.

is.palindrome <- function(n){
    test <- as.character(n)
    test.array <- strsplit(test, split = '')[[1]]
    return (identical(test.array, rev(test.array)))
}

output <- NULL

for (i in 100:999){
    for (j in 100:999){
        if(is.palindrome(i * j)){output <- c(output, i * j)}
    }
}

max(output)

# Summation of primes
# Problem 10
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# 
# Find the sum of all the primes below two million.

isprime <- function(n) { # only works for primes larger than 3
    for (i in 2:floor(sqrt(n))){
        if(n %% i == 0){return(FALSE)}
    }
    return(TRUE)
}

prime.list <- c(2, 3)
x <- 3

while(x < 2000000) {
    x <- x + 1
    if(isprime(x)){
        prime.list <- c(prime.list, x)
    }
}

sum(prime.list)

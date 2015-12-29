# 10001st prime
# Problem 7
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# 
# What is the 10 001st prime number?

isprime <- function(n) { # only works for primes larger than 3
    for (i in 2:floor(sqrt(n))){
        if(n %% i == 0){return(FALSE)}
    }
    return(TRUE)
}

prime.list <- c(2, 3)

while(length(prime.list) < 10001) {
    x <- prime.list[length(prime.list)] + 1
    while(!(isprime(x))){
        x <- x + 1
    }
    prime.list <- c(prime.list, x)
}

length(prime.list)
max(prime.list)

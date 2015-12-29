# Special Pythagorean triplet
# Problem 9
# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
# 
# a^2 + b^2 = c^2
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
# 
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

for(a in 1:1000){
    for(b in (a+1):1000){
        for(c in (b+1):1000){
            if(a^2 + b^2 == c^2 & a + b + c == 1000) {
                numbers <- c(a, b, c)
                numbers.product <- a * b * c
            }
        }
    }
}
numbers
numbers.product

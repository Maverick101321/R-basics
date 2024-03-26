vec1 <- c(1,2,3,4,5,6,7,8,9)
vec2 <- c(9,8,7,6,5,4,3,2,1)

# exp() gives the exponent of the given number
print(exp(10))

# log() gives the natural logarithm of the given number 
print(log(21))

# log10() gives the logarithm to the base 10
print(log10(21))

# sqrt() gives the square root of the given number
print(sqrt(64))

# abs() gives the absolute value 
print(abs(70))

# sin(), cos(), tan() gives the trigonometric equivalent 
print(sin(30))
print(cos(60))
print(tan(45))

# min() and max() finds the minimum and the maximum in a vector
print(min(vec1))
print(max(vec1))

# which.min() and which.max() returns the index of the minimun and the maximum 
# element in the vector
print(which.min(vec1))
print(which.max(vec1))

# pmin() and pmax() element wise minima and maxima of several vectors
print(pmin(vec1, vec2))
print(pmax(vec1, vec2))

# sum() and prod() return the sum and the product of elements of the vector
print(sum(vec2))
print(prod(vec2))

# cumsum() and cumprod() cumulative sum and product of the elements of a vector
print(cumsum(vec2))
print(cumprod(vec2))

# round() rounds the given number to the closest integer
round(9.45)

# floor() rounds the given number to the closest integer below
floor(9.45)

# ceiling() rounds the given number to the closest number above
ceiling(9.45)

# factorial() returns the factorial of the entered number
print(factorial(10))
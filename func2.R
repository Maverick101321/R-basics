#Functions in R take multiple inputs but give only one output
# This can be resolved by grouping all the outputs into a list and accessing them individually
vol_cylinder_mimo = function(dia, len){
  vol = (pi*dia^2)*len/4
  surface_area = pi*dia*len
  lst1 = list("Volume" = vol, "Surface_Area" = surface_area)
  return(lst1)
}
print(vol_cylinder_mimo(10,15))

# Inline Function - used for small functions
f1 = function(x) x^2 + 4^x + 4
print(f1(3))

# Looping over objects
# Some looping functions that are useful to when working interactively on command line are - 

# Apply function - to apply function over the margins of an array or matrix
# Syntax - apply(array, margins, function) margins refers to dimension of array along which
# function needs to be applied
a = matrix(1:9, 3, 3, byrow = TRUE)
print(a)
apply(a, 1, sum) #1 margin showcases the rows of the array
apply(a, 2, sum) #2 margin showcases the columns of the array

# Lapply - to apply a function over a list or a vector
# Syntax - lapply(list, function, ....)
# Always returns a list of the same length as that of the input list
b = matrix(10:18, 3, 3, byrow = TRUE)
l1 = list(a, b)
print(l1)
lapply(l1, det)

# Tapply - to apply a function over a ragged array
# Used to apply over a subset of vectors given by a combination of factors
id = c(1,1,1,1,2,2,3,4,4,4,5,5,5)
values = c(1,2,3,4,5,6,7,8,9,10,11,12,13)
tapply(values,id,sum)

# Mapply - multivariate version of lapply
# Can be applied to multiple lists simultaneously
# Syntax - mapply(function, list1, list2, ...)
diameters = list(1, 2, 3, 4)
lenghts = list(7, 4, 3, 2)
mapply(vol_cylinder_mimo, diameters, lenghts)

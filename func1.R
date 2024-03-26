#Functions can be created in R using the function()
#syntax - f = function(arguments){
#                   statements
# }

vol_cylinder = function(dia = 5, len = 100){
  vol = pi*dia^2*len/4
  return(vol)
}

print(vol_cylinder(25,1000))

#In R, functions are lazily evaluated, meaning that if some arguments are missing then the
# function is still executed as long the execution doesn't involve those arguments. 

vol_cyn = function(dia = 15, len = 100, radius){
  vol1 = pi*dia^2*len/4
  return (vol1)
}

v = vol_cyn(11,175)
print(v)

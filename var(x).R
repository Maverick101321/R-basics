# constants
print(pi)
print(month.name)
print(month.abb)
print(letters)
print(LETTERS)
# to find the datatype of a var(x)
print(typeof(1))
print(typeof("12-01-2023"))
#to check if the var(x) is of certain datatype
# is.datatype_to_be_checked(variable)
print(is.character("11-01-2002"))
print(is.character(as.integer("11-02-2002")))
# to convert the datatype of variable.names
# as.datatype_to_be_converted_into(variable_name)
print(as.complex(2))
# basic objects of R
# 1. Vectors - Ordered Collection of same data types
# 2. List - Ordered collection of objects
# 3. Data frame - Generic Tabular object (most commonly used in R)

# Vectors
# its an ordered collection of the same basic datatypes of a specific length
# example
x = c(1.2,3.7,4.6,9,7)
print(x)

# Lists
# its a generic object consisting of an ordered collection objects
# a list can coitain any datatype of varying types
sub_lst_1 = c(1,2,3,4,5)
sub_lst_2 = c("Hello", "World")
sub_lst_3 = c(1,4.8,6.5,9.5)
final_lst = list(sub_lst_1, sub_lst_2, sub_lst_3)
print(final_lst)
# Accessing elements of list
id = c(100, 101, 102, 103, 104, 105)
empl_name = c("a", "b", "c", "d", "e")
total_empl = c(5)
lst_1 = list("Employee_ID" = id, "Employee_Name" = empl_name, "Total_Num_of_Employees" = total_empl)
print(lst_1)
print(lst_1$Employee_Name)
print(lst_1[1])
print(lst_1[[1]][1])
# Manipulating Lists
lst_1[[1]][1] = 111
lst_1[[2]][2] = "f"
print(lst_1)
# Concatenation of lists
l1 = c(1,2,3,4,5)
l2 = c("hello", "worldf")
tl = c(l1, l2)
print(tl)

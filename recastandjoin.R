# Recasting is the process of manipulating dataframe in terms of its variables
# Also recasting helps in reshaping the data which could bring more insights
# into the data

pd = data.frame("Name" = c("Senthil", "Senthil", "Varun", "Varun"), 
                "Month" = c("April", "April", "January", "January"), 
                "blood_sugar" = c(141.2, 138.3, 135.2, 160.1), 
                "blood_pressure" = c(90, 78, 80, 81))
print(pd)

print("Now using the melt cmd")
# recasting in two steps or commands, 1. melt and 2. cast
# first step is to identify which ones are identifier variables and which ones 
# are measurement variables
# identifier variables are discrete types variables
# whereas measurement variables are numeric variables
# categorical and date measurements cant be measurement variables

#after this we use the melt command first
#call the library 'reshape2' using the library command
library(reshape2)
#syntax of melt cmd
#melt(dataframe, identifier_var, measurement_var, variable.name = "var", value.name = "value")
Df1 = melt(pd, id.vars = c("Name", "Month"), measure.vars = c("blood_sugar", "blood_pressure"))
print(Df1)
#now we will use the cast function (dcast)
#syntax of dcast cmd
#dcast(data, formula, value.var = column from which values have to be taken)
Df2 = dcast(Df, variable+Month ~ Name, 
value.var = "value")
print(Df2)

#applying the recast function performs both the melt and cast functions in a single go
#syntax for recast funtion
#recast(data, formula, ....., id.vars, measure.vars)
df3 = recast(pd, variable+Month ~ Name, id.var = c("Name", "Month"))
print(df3)

#Creating a function to the dataframe based on existing variables
library(dplyr)
df4 <- mutate(pd, log_BP = log(blood_pressure)) #the mutate cmd will add extra variable columns based on the existing ones
print(df4)

#Joining of two dataframes using dplyr package
#general syntax of dplyr package
#function(dataframe1, dataframe2, by = id.variable)
#function can be inner, left, right join and so on
#id.variable should be common to both the dataframes. it provides the identifiers for combining the two dataframes
#the following commands will be used to join the dataframes
#left, right, inner, full, semi, anti join

#left join (takes all the data common from both df and merges it with first df or left df)
df1 = data.frame("Name" = c("Abc", "Def", "Ghi", "Xyz"), "Month" = c("jan", "mar", "jun", "jul"), 
                "BP" = c(90, 78, 80, 81), "BS" = c(141.2, 139.8, 135.2, 160.5))
print("df1")
print(df1)
df2 = data.frame("Name" = c("Abc", "Def", "Xyz", "V"), "Age" = c(25, 27, 23, 19), 
                "Dept." = c("Frontend", "Backend", "data_anaytics", "data_scientist"))
print("df2")
print(df2)
library(dplyr)
pd_left_join1 = left_join(df1, df2, by = "Name")
print("Left Join")
print(pd_left_join1)

#Right join (takes all the data from both the df and merges it with the second df or the right df)
pd_right_join = right_join(df1, df2, by = "Name")
print("Right Join")
print(pd_right_join)

#Inner join (merges and retains those rows that are common to both the dataframes)
inner_join1 = inner_join(df1, df2, by = "Name")
print("Inner Join")
print(inner_join1)

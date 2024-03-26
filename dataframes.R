#Generic data objects of R used to store tabular data
#code to create dataframe
vec1 = c(1,2,3)
vec2 = c("R", "scilab", "Java")
vec3 = c("For Prototyping", "For Prototyping", "For Scaleup")
df = data.frame(vec1, vec2, vec3)
print(df)

# creating a dataframes from an exiting file
# new_df = read.table(path = "Path of the file")
# in the path use "/" instead of "\"
# a separator can also be used to separate the different entries. default 
# separator is a space ' ' example
# new_DF_2 = read.table(path = "Path of the file",sep)

# accessing the rows and columns
# df[val1,val2], where val1 represents the row and val2 the column
# val1 or val2 can also be used to show an array of values like
# c(1,3) or 1:2
print(df[1:2,]) #prints the first two rows
print(df[1:2]) #prints the first two columns
print(df[,1:2]) #prints the first two columns

# adding rows and columns to the data frame
# extra row can be added by rbind and column by cbind
# adding a new row
df = rbind(df, data.frame(vec1 = 4, vec2 = "C", vec3 = "For Scaleup"))

# adding a new column
df = cbind(df, vec4 = c(10,20,30,40))
print(df)

# deleting rows and columns
df_del = df[-3, -1]
print(df_del)

# conditional deletion
df_del2 = df[, !names(df)%in%c("vec3")]
print(df_del2)
# another conditional deletion
df_del4 = df[!df$vec1==3,]
print(df_del4)

# editing dataframes 
# df[[2]][2] = "R"
# print(df)

# editing the strings cannot be done by the same method as it will show NA 
# in the results. hence we use the following to solve it. 
v1 = c(1,2,3,4)
v2 = c("R", "Scilab", "Java", "C")
v3 = c("For Prototyping", "For Prototyping", "For Scaleup", "For Scaleup")
df_21 = data.frame(v1,v2,v3,sameAsFactors=F)
print(df_21)
df_21[3,3] = "Other"
print(df_21)

# subset of a dataframe
name = c("Rahul", "Varun", "Arun", "Varun")
month_born = c("sept", "jan", "mar", "jan")
age = c(20, 19, 21, 19)
blood_sugar = c(188.27, 200.70, 187.99, 150.16)
blood_pressure = c(90, 78, 80, 88)
df_new = data.frame(name, age, month_born, blood_sugar, blood_pressure)
print(df_new)
df_sub = subset(df_new, name=="Varun") #only prints where the name is Varun
df_sub2 = subset(df_new, name=="Rahul" | blood_pressure>80)
#above line prints if the name is Rahul or if the blood pressure>80
print(df_sub)
print(df_sub2)

#editing the dataframe interactively using edit
# create an instance of the dataframe and use the edit command to open a 
# editor, and make the required changes for example
df3 = data.frame()
df3 = edit(df3)
print(df3)



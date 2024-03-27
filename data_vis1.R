# Scatter Plot
x = 1:10
y = x^2
plot(y)

# Using R's inbuilt dataset 'mtcars'
plot(mtcars$wt, mtcars$mpg, main = "Cars of 1974", xlab = "Cars Weight", ylab = "Miles per Gallon", pch = 10)
# First parameneter we keep is that of the x axis and the second is of y axis
# xlab and ylab allows us to name the axis
# pch corressponds to different shapes for the points on the graph


# Line Plot 
plot(x, y, type = 'l')


# Bar Plot
# Syntax of bar plot - 
# barplot(H, names.arg, xlab, ylab, main, names.arg, col)
# H is the height of the individual bar plots
# names.arg is the names to be display below the individual bar plots
# col allows us to define the color of the bar graphs
# border allows us to specify the color of the border of the bar plots
H = c(10, 12, 5, 2, 17, 25, 22)
m = c("jan", "feb", "mar", "apr", "may", "jun", "jul")
barplot(H, names.arg = m, xlab = "Month", ylab = "Profits", main = "Revenue", col = "red", border = "yellow")


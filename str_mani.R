# String Manipulation

# grep() -> Searches for a specified pattern in a vector and returns the indices and values 
# that matches them
v <- c("apple", "banana", "mango", "kiwi", "date", "cashews", "grapes")
pattern <- "a"
result <- grep(pattern, v, value = TRUE)
print(result)

# nchar() -> returns the number of characters in each element of a character vector
lenght <- nchar(v)
print(lenght)

# paste() -> concatenates vectors
first_name <- "abc"
last_name <- "xyz"
full_name <- paste(first_name, last_name)
print(full_name)

# sprintf() -> formats strings based on a format string and a list of values. 
# Similar to the printf() func in c++
age <- 21
name <- "abc"
formatted_string <- sprintf("My name is %s and I am %d years old", name, age)
print(formatted_string)

# substr() used to extract substrings
text <- "Hello World"
sub_string <- substr(text, start = 8, stop = 13)
print(sub_string)

# strsplit() splits the string into substrings
sentence <- "R programming is fun"
words <- unlist(strsplit(sentence, " "))
print(words)

# regexpr() -> finds the starting position of the fist occurance of a pattern in a string
text1 <- "Programming in R is enjoyable"
pattern_position = regexpr("R", text1)
print(pattern_position)

# gregexpr() -> to find all the positions of the pattern in a string
text2 <- "programming in R is fun, R is powerful, R is versatile"
pattern_all_positions = gregexpr("R", text2)
print(unlist(pattern_all_positions))

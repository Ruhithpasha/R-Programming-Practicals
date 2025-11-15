# Program 7

# 7. Write an R Program to Find the Length of a String


str <- "Hello R Programming"
length_of_str <- nchar(str)
cat("The length of the string is:", length_of_str,"\n")



#or

strings <- c("R", "Programming", "Language")
lengths <- nchar(strings)
data.frame(String = strings, Length = lengths)
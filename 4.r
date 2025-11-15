# Program 4


# 4. Write an R Program to Find the Factorial of a Number

num <- 5
factorial_result <- factorial(num)
cat("The factorial of", num, "is", factorial_result, "\n")


# or

num <- 6
fact <- 1
for(i in 1:num)
{ fact <- fact * i }
cat("The factorial of", num, "is:", fact, "\n")
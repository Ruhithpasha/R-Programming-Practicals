# Program 5


num <- 5
for(i in 1:10)
{ cat(num, "x", i, "=", num * i, "\n") }


#or


num <- as.integer(readline(prompt = "Enter a number: "))
for(i in 1:10)
{ cat(num, "x", i, "=", num * i, "\n") }
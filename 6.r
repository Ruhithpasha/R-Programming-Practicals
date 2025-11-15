# Program 6


num <- as.integer(readline(prompt = "Enter a number: "))
is_prime <- TRUE
if (num <= 1) {
is_prime <- FALSE
} else {
for (i in 2:floor(sqrt(num))) {
if (num %% i == 0) {
is_prime <- FALSE
break
}
}
}
if (is_prime) {
cat(num, "is a Prime Number\n")
} else {
cat(num, "is NOT a Prime Number\n")
}


#or


numbers <- c(2, 3, 4, 5, 10, 13, 17, 20)
check_prime <- function(n)
{ if (n <= 1) return(FALSE)
for (i in 2:sqrt(n))
{ if (n %% i == 0) return(FALSE) }
return(TRUE)
}
prime_status <- sapply (numbers, check_prime)
result <- data.frame(Number = numbers, IsPrime = prime_status)
print (result)
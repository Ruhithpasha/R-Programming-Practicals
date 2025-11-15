# Program 12.    12. Write an R Program to Check if a Vector Contains the Given Element



# Example 1: Fixed version
vec <- c(10, 20, 30, 40, 50)
element <- 30
if (element %in% vec) {
cat(element, "is present in the vector.\n")
} else {
cat(element, "is NOT present in the vector.\n")
}



# Example 2: Fixed version (using !)
vec <- c(10, 20, 30, 40, 50)
element <- 30
if (!(element %in% vec)) { # put parentheses around (element %in% vec)
cat(element, "is NOT present in the vector.\n")
} else {
cat(element, "is present in the vector.\n")
}



# Example 3: User Input version (fixed braces)
vec <- c(10, 20, 30, 40, 50)
# Take element input from user
element <- as.numeric(readline(prompt = "Enter an element to check: "))
# Check if the vector contains the element
if (element %in% vec) {
cat("Yes,", element, "is present in the vector.\n")
} else {
cat("No,", element, "is NOT present in the vector.\n")
}
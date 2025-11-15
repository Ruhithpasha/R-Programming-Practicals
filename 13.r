# Program 13



# 13. Write an R Program to Make a Simple Calculator


# Take input from the user
num1 <- as.numeric(readline(prompt = "Enter first number: "))
num2 <- as.numeric(readline(prompt = "Enter second number: "))
# Display operations menu
cat("Choose an operation:\n")
cat("1. Addition (+)\n")
cat("2. Subtraction (-)\n")
cat("3. Multiplication (*)\n")
cat("4. Division (/)\n")
# Read user choice
choice <- as.integer(readline(prompt = "Enter your choice (1-4): "))
# Perform calculation based on choice
if (choice == 1) {
result <- num1 + num2
cat("Result:", num1, "+", num2, "=", result, "\n")
} else if (choice == 2) {
result <- num1 - num2
cat("Result:", num1, "-", num2, "=", result, "\n")
} else if (choice == 3) {
result <- num1 * num2
cat("Result:", num1, "*", num2, "=", result, "\n")
} else if (choice == 4) {
if (num2 != 0) {
result <- num1 / num2
cat("Result:", num1, "/", num2, "=", result, "\n")
} else {
cat("Error: Division by zero is not allowed.\n")
}
} else {
cat("Invalid choice! Please select again (1-4).\n")
}
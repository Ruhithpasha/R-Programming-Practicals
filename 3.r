# Program 3

# 3. Write an R Program to Sort a Vector


numbers <- c(45, 12, 89, 7, 34, 22, 67)
ascending_order <- sort(numbers)
descending_order <- sort(numbers, decreasing = TRUE)
cat("Original Vector : ", numbers, "\n")
cat("Ascending Order : ", ascending_order, "\n")
cat("Descending Order: ", descending_order, "\n")
# Program 15


# 15. Write a R program to create an 3 dimensional array of 24 elements using the dim()
# function.



# Create a vector of 24 elements
elements <- 1:24
# Assign dimensions to make it a 3D array
dim(elements) <- c(3, 4, 2) # 3 rows, 4 columns, 2 matrices (slices)
# Now 'elements' is a 3-dimensional array
array3D <- elements
#Print 3 Dimensional Array
cat("3-Dimensional Array:\n")
print(array3D)
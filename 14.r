# Program 14


#14. Write an R program to convert a given matrix to a 1 dimensional array.


# Create a sample matrix
mat <- matrix(1:9, nrow=3, ncol=3)
# Print Original matrix
cat("Original Matrix:\n")
print(mat)
# Convert matrix to 1D array (vector)
arr <- as.vector(mat)
# Print Vector
cat("\n1-Dimensional Array:\n")
print(arr)
#print dimensions
print(dim(mat))


#or


#without using inbuilt function
# Create a sample matrix
mat <- matrix(1:9, nrow=3, ncol=3)
cat("Original Matrix:\n")
print(mat)
# Initialize an empty vector
arr <- c()
# Loop through each element of the matrix
for (i in 1:nrow(mat))
{ for (j in 1:ncol(mat))
{ arr <- c(arr, mat[i, j]) }
}# Append each element to the vector
# Print Vector
cat("\n1-Dimensional Array:\n")
print(arr)
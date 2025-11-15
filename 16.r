# Program 16


# 16. Write an R program to create plot chart and implement
# a. Draw line
# b. Labels main label, xlabel and ylabel
# c. Color, Line color, line width, line style
# d. Size – pch, cex


# Sample data
x <- 1:10
y <- c(2, 5, 4, 6, 7, 8, 9, 12, 11, 15)
# Simple line plot
plot(x, y, type="o", main="Sample Line Plot", xlab="X-axis", ylab="Y-axis",
col="blue", lty=2, lwd=2, pch=16, cex=1.5)



# Program2



# Create sample data
x <- 1:10
y <- c(2, 5, 7, 8, 10, 12, 15, 18, 20, 25)
# Plot the line with customizations
plot(x, y, type = "o",
main = "Line Plot Example",
xlab = "X-Axis Label",
ylab = "Y-Axis Label",
col = "blue",
lwd = 2,
lty = 2,
pch = 16,
cex = 1.5 )
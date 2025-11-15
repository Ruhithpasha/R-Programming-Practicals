# Program 17


# 17. Write a R program to create scatterplot chart and implement
# a. Labels main label, xlabel and ylabel
# b. Color, Line color, line width, line style
# c. Size – pch, cex
# d. Compare plot


# Sample data
x <- 1:10
y1 <- c(2,5,4,6,7,8,9,12,11,15)
y2 <- c(1,4,3,5,6,7,8,10,9,13)
# Create scatterplot for y1
plot(x, y1, main="Scatterplot Comparison", xlab="X-axis", ylab="Y-axis",
col="blue", pch=16, cex=1.5)
# Add y2 points
points(x, y2, col="red", pch=17, cex=1.5)
# Add lines to connect points
lines(x, y1, col="blue", lty=2, lwd=2)
lines(x, y2, col="red", lty=3, lwd=2)
# Add legend to compare plots
legend("topleft", legend=c("Y1","Y2"), col=c("blue","red"), pch=c(16,17), lty=c(2,3))
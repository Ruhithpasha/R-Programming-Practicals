# Program 19


# 19. Write an R program to create bar chart and implement
# a. Names.agr
# b. Color
# c. Density
# d. Width
# e. Horizontal bars


# Sample data
counts <- c(5, 10, 15, 20)
names <- c("A", "B", "C", "D")
# Vertical bar chart
barplot(counts,
names.arg = names,
col= "skyblue",
density = 20,
width = 0.5,
main = "Vertical Bar Chart",
xlab = "Categories",
ylab = "Values")
# Horizontal bar chart
barplot(counts,
names.arg = names,
col = "lightgreen",
density = 20,
width = 0.5,
main = "Horizontal Bar Chart",
horiz = TRUE)
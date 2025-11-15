# Program 18

# 18. Write a R program to create pie chart and implement
# a. Start angle
# b. Labels and Header
# c. Color
# d. Legend ()


# Sample data
slices <- c(10, 20, 30, 40)
labels <- c("Apple", "Banana", "Cherry", "Date")
colors <- c("red", "yellow", "pink", "orange")
# Create pie chart
pie(slices,
labels = labels,
main = "Fruit Pie Chart",
col = colors,
clockwise = TRUE,
init.angle = 90)
# Labels for slices
# Title
# Colors for slices
# Clockwise direction # Start angle
# Add legend
legend("topright", legend = labels, fill = colors)
# Program 11.    11. Write an R Program to Drop Columns in a Data frame



df<- data.frame( ID = 1:3,
Name = c("ruhith","pasha","strange"),
Age = c(21,23,20),
Marks = c(100,200, 90)
)
cat("original data frame \n")
print(df)
data1<- subset(df, select = -Age)
cat("\n After dropping age column: \n")
print(data1)
data2<- subset(df, select = -c(Name, Marks))



#2nd program
df <- data.frame(
ID
= 1:3,
Name = c("ruhith", "pasha", "Charlie"),
Age = c(21, 25, 30),
Marks = c(89, 76, 91)
)
# Print original dataframe
cat(" Original Data Frame : \n")
print(df)
# Drop a column by index (drop 3rd column: Age)
df1 <- df [ , -3]
cat("\n DataFrame after dropping 'Age' column:\n")
print (df1)
# Drop multiple columns by index (drop 3rd and 4th: Age, Marks)
df2 <- df[ , -c(3,4)]
cat("\nDataFrame after dropping 'Age' and 'Marks' columns:\n")
print(df2)




#3rd program
# Create a sample data frame
df <- data.frame(
ID
= 1:5,
Name = c("Alice", "Bob", "Charlie", "David", "Edwin"),
Age = c(21, 25, 30, 22, 28),
Marks = c(89, 76, 91, 67, 82) )
# Print original dataframe
cat("Original DataFrame:\n")
print(df)
# Drop a column by index (drop 3rd column: Age)
df1 <- df[ -3, ]
cat("\nDataFrame after dropping 'Age' column:\n")
print(df1)
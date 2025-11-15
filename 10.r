# Program 10


df1 <- data.frame(
ID = c(1, 2, 3),
Name = c("John", "Alice", "Bob"),
Marks = c(85, 90, 78)
)
df2 <- data.frame(
ID = c(4, 5, 6),
Name = c("David", "Eva", "Frank"),
Marks = c(88, 92, 80)
)
combined_df <- rbind(df1, df2)
print(combined_df)
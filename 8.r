# Program 8


# 8. Write an R Program to check if Characters are Present in a String

main_string <- "R programming language"
search_char <- "g"
is_present <- grepl(search_char, main_string)
if (is_present) {
cat("'"
, search_char, "' is present in the string.\n")
} else {
cat("'"
, search_char, "' is NOT present in the string.\n")
}


#or

main_string <- "R programming"
search_chars <- c("R", "x", "g")
presence <- sapply(search_chars, function(ch) grepl(ch, main_string))
data.frame(Character = search_chars, Present = presence)
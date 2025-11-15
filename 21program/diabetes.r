#install.packages("caTools")
#install.packages("ROCR")

# Load necessary libraries
library(caTools)
library(ROCR)
list.files()

# 1. Read the data from the CSV file
# This assumes 'pima.te.csv' is in your R working directory.
data <- read.csv(file="Pima.te.csv", head=TRUE, sep=",")

# Convert 'type' column to binary (0 and 1)
# "Yes" = 1 (diabetic), "No" = 0 (not diabetic)
data$type <- ifelse(data$type == "Yes", 1, 0)

# 2. Split the dataset into training and testing sets
# The data is split in an 80:20 ratio. 80% for training, 20% for testing.
split <- sample.split(data, SplitRatio = 0.8)

# Create the training set from the 80% of data
training_set <- subset(data, split == TRUE)

# Create the testing set from the remaining 20%
testing_set <- subset(data, split == FALSE)

# 3. Create the logistic regression model
# We use the glm() (generalized linear model) function with family = "binomial" for logistic regression.
# 'type ~ .' means we are predicting the 'type' variable using all other variables as predictors.
model <- glm(type ~ ., data = training_set, family = "binomial")

# You can view the summary of the model to see coefficients and statistics
# summary(model)

# 4. Make predictions on the test dataset
# 'type = "response"' outputs probabilities.
predicted_probabilities <- predict(model, newdata = testing_set, type = "response")

# 5. Create a confusion matrix to evaluate model accuracy
# We use a threshold of 0.5 to classify probabilities into 0 or 1.
# If probability > 0.5, it's classified as 1 (diabetic), otherwise 0 (not diabetic).
conf_matrix <- table(ActualValue = testing_set$type, PredictedValue = predicted_probabilities > 0.5)
print("Confusion Matrix with 0.5 threshold:")
print(conf_matrix)

# Calculate and print the accuracy
accuracy <- sum(diag(conf_matrix)) / sum(conf_matrix)
print(paste("Accuracy:", accuracy))


# 6. Find the optimal threshold using an ROC curve
# Predict probabilities on the training data to generate the ROC curve
training_probabilities <- predict(model, newdata = training_set, type = "response")

# Create a prediction object for the ROCR package
pred_obj <- prediction(training_probabilities, training_set$type)

# Create a performance object to define what to plot (True Positive Rate vs. False Positive Rate)
perf_obj <- performance(pred_obj, "tpr", "fpr")

# Plot the ROC curve
plot(perf_obj, colorize = TRUE, print.cutoffs.at = seq(0.1, by = 0.1), main = "ROC Curve")
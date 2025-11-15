# V-Engine Prediction

# Install Packages (run once if needed)
# install.packages("caTools")
# install.packages("pROC")

# Load libraries
library(caTools)
library(pROC)

# Load data
data(mtcars)

# Extract relevant columns (disp, wt, vs) from mtcars
data1 <- mtcars[, c("disp", "wt", "vs")]

# Check first few rows
head(data1)

# Split dataset into 70:30 ratio
set.seed(123)   # for reproducibility
split <- sample.split(data1$vs, SplitRatio = 0.7)

# Use 70% of data for training
trgdata <- subset(data1, split == TRUE)

# Use 30% for testing
testdata <- subset(data1, split == FALSE)

# Create logistic regression model and train
model <- glm(vs ~ ., family = binomial(), data = trgdata)

# Predict probabilities using test data
prob <- predict(model, testdata, type = "response")

# Convert probabilities to class labels
pred_class <- ifelse(prob >= 0.5, 1, 0)

# Confusion matrix
cm <- table(Actual = testdata$vs, Predicted = pred_class)

# Display the Confusion matrix
print("Confusion Matrix:")
print(cm)

# ROC Curve & AUC
roc_obj <- roc(testdata$vs, prob)

# Plot the ROC curve
plot(roc_obj, col = "blue", main = "ROC Curve - V Engine")

# Calculate AUC
auc_value <- auc(roc_obj)
cat("AUC:", auc_value, "\n")

install.packages("rpart")

library(rpart)

data(iris)

set.seed(123)
train_indices <- sample(1:nrow(iris),0.7*nrow(iris))
train_data <- iris[train_indices, ]
test_data <- iris[-train_indices, ]

#Create a decision Tree Model Using the Training Data
#We'll predict the 'Species' columns based on other features
tree_model <- rpart(Species ~ . , data = train_data)

#Making predicitions on the data using the dcs model
predicted_species <- predict(tree_model, newdata = test_data, type="class")

#Compare the predicted species with the actual species to check for accuracy
acc <- sum(predicted_species == test_data$Species) / nrow(test_data)
cat("Accuracy:",acc)
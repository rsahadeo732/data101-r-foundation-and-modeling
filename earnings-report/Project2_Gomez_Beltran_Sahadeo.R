#Load libraries
library(rpart)
library(e1071)   
library(ggplot2) 
library(rpart.plot)

#Load Dataset
DrugConsumption <- read.csv("C:/Users/supaq/OneDrive/Desktop/Rutgers Courses/Data 101 - Spring 2024/R Code/New Folder/drug_consumption.csv")

#View the Data
summary(DrugConsumption)

#Train the rpart model to predict Oscore
model_rpart <- rpart(formula = Oscore ~ Ethnicity + Nscore + Gender + Age + Ascore, 
                     data = DrugConsumption,
                     control = rpart.control(cp = 0.0009, minsplit = 200, minbucket = 50))

#Visualize the decision tree
rpart.plot(model_rpart)

#Predict Oscore using the trained rpart model
DrugConsumption$pred.Oscore_rpart <- predict(model_rpart, newdata = DrugConsumption)

#Calculate Mean Squared Error for rpart
MSE_rpart <- mean((DrugConsumption$Oscore - DrugConsumption$pred.Oscore_rpart)^2)
rounded_MSE_rpart <- round(MSE_rpart, digits = 3)

#Print MSE for rpart
print(paste("MSE (rpart):", rounded_MSE_rpart))

#Split the dataset into training and testing sets (70-30 split)
set.seed(123) # for reproducibility
train_index <- sample(1:nrow(DrugConsumption), 0.7*nrow(DrugConsumption))
train_data <- DrugConsumption[train_index, ]
test_data <- DrugConsumption[-train_index, ]

#Convert 'Ascore' to factor in training data
train_data$Ascore <- as.factor(train_data$Ascore)

#Train the Naïve Bayes classifier
nb_model <- naiveBayes(Oscore ~ Ethnicity + Nscore + Gender + Age + Ascore, data = train_data)

#Predict using the trained Naïve Bayes model on test data
nb_predictions <- predict(nb_model, test_data[, c("Ethnicity", "Nscore", "Gender", "Age", "Ascore")])

#Create confusion matrix for Naïve Bayes
conf_matrix_nb <- table(test_data$Oscore, nb_predictions)

#Report confusion matrix for Naïve Bayes
print("Confusion Matrix (Naïve Bayes):")
print(conf_matrix_nb)

#Calculate accuracy for Naïve Bayes
accuracy_nb <- sum(diag(conf_matrix_nb)) / sum(conf_matrix_nb)
print(paste("Accuracy (Naïve Bayes):", round(accuracy_nb, 4)))

#Compare accuracy of Naïve Bayes with rpart
print(paste("Accuracy (rpart):", round(1 - rounded_MSE_rpart, 4)))


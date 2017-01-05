# Credit-Risk-Modeling-Kaggle
Predicting the probability of serious delinquency or default using Logistic Regression

##Abstract
Banks use credit scoring models to assign a credit score to its customers which will represent their overall creditworthiness. To achieve this score, banks use the credit history data along with the demographic details of the customer. A part of the credit scoring process is to estimate the probability of default which is nothing but the probability that the customer will not pay back the loan amount. In this project, we will be estimating the probability of a borrower defaulting in the next two years and classify a borrower into serious delinquent and non-delinquent groups.

##Dataset used
The dataset used for this project viz ‘Give Me Some Credit’ is taken from Kaggle. It has 11 variables altogether which provide the borrower’s details such as age, income, debt etc. The variables are described in Figure1 in the report. Seriousdlqin2 is the dependent variable and the rest of the 10 variables are the independent variables for the purposes of this project. The data is available in 'multi.csv' file.

##Techniques used
As the number of independent variables is high, we reduce the dimensions using techniques such as Principal Component Analysis and Factor Analysis. Classification techniques such as KNN, Linear Discriminant Analysis and Logistic Regression are then run on factors. The probability of serious delinquency in the next two years is estimated using the logistic regression technique.

First part of the code was done in SAS and the second part was done in R for better visualization.


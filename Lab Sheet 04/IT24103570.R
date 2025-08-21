setwd("C:\\Users\\IT24103570\\Desktop\\IT24103570")

#Q1
branch_data <- read.csv("Exercise.txt", header = TRUE)

#Q2
str(branch_data)
names(branch_data)

#Q3
boxplot(branch_data$Sales,main="Boxplot of sales",ylab="Sales")

#Q4
summary(branch_data$Advertising_X2)
iqr_advertising <- IQR(branch_data$Advertising_X2)
print(paste("IQR of advertising:", iqr_advertising))

#Q5

find_outliers <- function(x) {
  Q1 <- quantile(x, 0.25,na.rm =TRUE)
  Q3 <- quantile(x,o.75,na.rm=TRUE)
  IQR_val <- Q3 - Q1
  lower_bound <- Q1-1.5*IQR_val
  upper_bound <- Q3+1.5*IQR_val
  outliers <- x[x < lower_bound | x > upper_bound]
  return(outliers)
}


outliers_years <- find_outliers(branch_data$Years_X3)
print("outliers in 'years' variable:")
print(outliers_years)

install.packages("ggplot2")

library(ggplot2)

sales <- c(10000,12000,8000,15000)
expenses <- c(4000,3000,5000,6000)
quarters <- c("Q1","Q2","Q3","Q4")
print(quarters)

business_data <- data.frame(Quarter = quarters, Sales = sales,Expenses = expenses)

#Data Exploration
print(summary(business_data))

#Plotting the graph to visualize the data
ggplot(business_data, aes(x=Quarter))+
  geom_bar(aes(y = Sales,fill="Sales",color="Black"),stat = "identity")+
  geom_bar(aes(y = -Expenses, fill = "Expenses",color="Black"),stat = "identity")+
  labs(title="Sales and Expenses by Quarter", y = "Amount", fill = "Category")+
  theme_minimal()


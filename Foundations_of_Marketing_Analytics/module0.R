
# __________________________________________________________
# //////////////////////////////////////////////////////////
#
#    MODULE 0 - INTRODUCTION
# __________________________________________________________
# //////////////////////////////////////////////////////////


# --- EXPLORE THE DATA -------------------------------------


# Load text file into local variable called 'mydata'
mydata = read.delim(file = '/Users/lli2/Git/Coursera/Foundations_of_Marketing_Analytics/purchases.txt', header = FALSE, sep = '\t', dec = '.')

# Display what has been loaded
head(mydata)
summary(mydata)

# Add headers and interpret the last column as a date, extract year of purchase
colnames(mydata) = c('customer_id', 'purchase_amount', 'date_of_purchase')
mydata$date_of_purchase = as.Date(mydata$date_of_purchase, "%Y-%m-%d")
mydata$year_of_purchase = as.numeric(format(mydata$date_of_purchase, "%Y"))

# Display the data set after transformation
head(mydata)
summary(mydata)

# Explore the data using simple SQL statements
library(sqldf)
library(dplyr)

# Number of purchases per year
x1 = sqldf("SELECT year_of_purchase, COUNT(year_of_purchase) AS 'counter' FROM mydata GROUP BY 1 ORDER BY 1")
x1 = mydata %>% 
  group_by(year_of_purchase) %>% 
  summarise(counter = n())
barplot(x1$counter, names.arg = x$year_of_purchase)

# Average purchase amount per year
x2 = sqldf("SELECT year_of_purchase, AVG(purchase_amount) AS 'avg_amount' FROM mydata GROUP BY 1 ORDER BY 1")
x2 = mydata %>% 
  group_by(year_of_purchase) %>% 
  summarise(avg_amount = mean(purchase_amount))
barplot(x2$avg_amount, names.arg = x2$year_of_purchase)

# Total purchase amounts per year
x3 = sqldf("SELECT year_of_purchase, SUM(purchase_amount) AS 'sum_amount' FROM mydata GROUP BY 1 ORDER BY 1")
x3 = mydata %>% 
  group_by(year_of_purchase) %>% 
  summarise(sum_amount = sum(purchase_amount))
barplot(x3$sum_amount, names.arg = x3$year_of_purchase)

# All in one
x = sqldf("SELECT year_of_purchase,
                  COUNT(year_of_purchase) AS 'counter',
                  AVG(purchase_amount) AS 'avg_amount',
                  SUM(purchase_amount) AS 'sum_amount'
           FROM mydata GROUP BY 1 ORDER BY 1")
print(x)
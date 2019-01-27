
# __________________________________________________________
# //////////////////////////////////////////////////////////
#
#    MODULE 1 - STATISTICAL SEGMENTATION
# __________________________________________________________
# //////////////////////////////////////////////////////////


# --- COMPUTING RECENCY, FREQUENCY, MONETARY VALUE ---------
setwd("/Users/lli2/Git/Coursera/Foundations_of_Marketing_Analytics")

# Load text file into local variable called 'data'
mydata = read.delim(file = 'purchases.txt', header = FALSE, sep = '\t', dec = '.')

# Add headers and interpret the last column as a date, extract year of purchase
colnames(mydata) = c('customer_id', 'purchase_amount', 'date_of_purchase')
mydata$date_of_purchase = as.Date(mydata$date_of_purchase, "%Y-%m-%d")
mydata$days_since = as.numeric(difftime(time1 = max(mydata$date_of_purchase)+1,
                                        time2 = mydata$date_of_purchase,
                                        units = "days"))

# Display the data after transformation
head(mydata)
summary(mydata)

# Compute key marketing indicators using SQL language
library(sqldf)
library(dplyr)

# Compute recency, frequency, and average purchase amount
customers = sqldf("SELECT customer_id,
                          MIN(days_since) AS 'recency',
                          COUNT(*) AS 'frequency',
                          AVG(purchase_amount) AS 'amount'
                   FROM mydata GROUP BY 1")
customers = mydata %>% 
  group_by(customer_id) %>% 
  summarise(recency = min(days_since),
            frequency = n(),
            amount = mean(purchase_amount)) # The monetary amount is AVERAGE.

# Explore the data
head(customers)
summary(customers)
hist(customers$recency)
hist(customers$frequency)
hist(customers$amount)
hist(customers$amount, breaks = 100)


# --- PREPARING AND TRANSFORMING DATA ----------------------


# Copy customer data into new data frame
new_data = as.data.frame(customers)

# Remove customer id as a variable, store it as row names
head(new_data)
row.names(new_data) = new_data$customer_id
new_data$customer_id = NULL
head(new_data)

# Take the log-transform of the amount, and plot
new_data$frequency = log(new_data$frequency)
new_data$amount = log(new_data$amount)

hist(new_data$frequency)
hist(new_data$amount)

# Standardize variables
new_data = scale(new_data)  # scale is doing z-score standarization
head(new_data) # after "scale", this is a matrix.


# --- RUNNING A HIERARCHICAL SEGMENTATION ------------------


# Compute distance metrics on standardized data
# This will likely generate an error on most machines
# d = dist(new_data)

# Take a 10% sample
sample = seq(1, 18417, by = 10)
head(sample)
customers_sample = customers[sample, ]
new_data_sample  = new_data[sample, ]

# Compute distance metrics on standardized data
d = dist(new_data_sample)  
# compute the distance matrix for each pair of cases in the data set, usually after data transformation (e.g. scale, log,...)
# set row.names before using the function
# default distance is Euclidean Distance
# other types: maximum, Manhattan, Canberra, binary, Minkowski

# Perform hierarchical clustering on distance metrics
c = hclust(d, method="ward.D2")

# Plot de dendogram
plot(c)

# Cut at 9 segments
members = cutree(c, k = 5)

# Show 30 first customers, frequency table
members[1:30]
table(members)

# Show profile of each segment
cluster_mean = aggregate(customers_sample[, 2:4], by = list(members), mean)
cluster_mean[order(cluster_mean$recency),]

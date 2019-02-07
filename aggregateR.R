# there are 2 methods to do aggregate in R: aggregate(); dplyr::group_by()%>% summarise()

library(dplyr)


#ChickWeight data set ----
?ChickWeight

# The ChickWeight data frame has 578 rows and 4 columns from an experiment on the effect of diet on early growth of chicks.
# ...

data <- ChickWeight

#Finding the mean weight depending on diet: -----
aggregate(data$weight, list(diet = data$Diet), mean)
# alternatively using a formula the weight is dependent on the diet
# diet explains the weight response
aggregate(weight ~ Diet, data = data, mean)

# dplyr approach
group_by(data, Diet) %>% summarise(mean = mean(weight))


#Aggregating on time. ----
aggregate(data$weight, list(time=data$Time), mean)
group_by(data, Time) %>% summarise(mean = mean(weight))

#Aggregating on two variables.----
head(aggregate(data$weight,
               list(time = data$Time, diet = data$Diet),
               mean))
# alternatively
head(aggregate(weight ~ Time + Diet, data = data, mean))

group_by(data, Diet, Time) %>% summarise(mean = mean(weight))

#Aggregating and calculating two summaries. ----
aggregate(weight ~ Diet, data = data, FUN = function(x) c(mean = mean(x), n = length(x)))
group_by(data, Diet) %>% summarise(mean = mean(weight), n = length(weight))

# Aggregating on a data subset. ----
aggregate(weight ~ Diet, data = subset(data, Diet!=1), mean)
data %>%
  filter(Diet != 1) %>%
  group_by(Diet) %>%
  summarise(mean = mean(weight))

# the dplyr approach allows you to “pipe” or “chain” different functions. ----
data %>%
  filter(Diet != 1) %>%
  group_by(Diet) %>%
  summarise(mean = mean(weight)) %>%
  arrange(mean)


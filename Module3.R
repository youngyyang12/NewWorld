#Module3 assignment for R Programming

#The initial data Set with different variable type
Name <-c("Jeb","Donald","Ted","Marco","Carly","Hillary","Berine")
ABC <-c(4, 62, 51, 21, 2, 14, 15)
CBS <-c(12, 75, 43, 19, 1, 21, 19)

#We can make the data set to matrix
poll_result <-cbind(Name,ABC, CBS)
poll_result
class(poll_result)
class(poll_result[2,3])

#Because all elements in matrix are most character, it is hard to work with. So, we can make a data frame from the data set
poll_result.df <-data.frame(Name, ABC, CBS)
poll_result.df
class(poll_result.df)
class(poll_result.df[2,3])

#From here, we can Use function in R to calculate the mean of each value
mean(poll_result.df)
mean(poll_result.df[,2:3])
mean(poll_result.df[,2])
mean(poll_result.df[,3])

#First two function does not work here. Keep getting error messages.
#Did some research online, find the version after 3.0.0of R is not support this format of function "mean(<data.frame>)"
#However, last two are still works.


#Find other ways to calculate the means 
#Use the summarise function to calculate the mean
library(dplyr)
summarise(poll_result.df,ABC_mean=mean(ABC),CBS_mean=mean(CBS))

#Also, the colMeans function can find the mean value too. Just need some small changes.
colMeans(poll_result.df[,2:3])


#Trying to find each candidate's mean value of the result.
#Try rowMeans function. Just like colMeans, need some small changes 
rowMeans(poll_result.df[2:3])




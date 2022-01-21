#Modeule 2 assignment: Post the result of testing this function on your blog and your GitHub. 
#Plus, provide reference and explanation as to why this function works or does not work?

#Try 1
assignment2 <- c(16,18,14,22,27,17,19,17,17,22,20,22)

myMean<- function(assignment2){
  return(sum(assignment2)/length(assignment2))
}
myMean()

#Run the function and get error message
#"Error in myMean(): argument "assignment2" is missing, with no default"


#Try 2

assignment2 <- c(16,18,14,22,27,17,19,17,17,22,20,22)
#Define a function and name it myMean
myMean<- function(assignment2){
  return(sum(assignment2)/length(assignment2))#compute the the mean of the assignment2 and return the value
  }
#Call the function and assign the parameter
myMean(assignment2)  


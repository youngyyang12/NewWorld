# Module 7 assignment

# Instruction:
# Download any type of data (from the web or use data sets package) or create your own set. 
# Then, on the second step, determine if generic function as discussed in this module can be assigned to your data set, and if not, why? 
# In third and last step, explore if S3 and S4 can be assigned to your data set.




# First, install "dataset" package and select one data set in the package
datasets::BOD

# Second, determine if generic functions can be assigned to the data set
print(BOD)
typeof(BOD)
summary(BOD)
plot(BOD$demand)
plot(BOD$Time)


# Generic function that do not work. 
# Return message: "Warning message: #In mean.default(BOD) : argument is not numeric or logical: returning NA"
mean(BOD)


# Finally, explore if S3 and S4 can be assigned to the data set.

# For S4 class

s4_BOD <- setClass("s4_BOD", slots = list(Time="numeric", demand="numeric"))
isS4(s4_BOD)

setMethod("show","s4_BOD",
          function(object){
            cat("Time:", object@Time,"\n")
            cat("demand:", object@demand,"\n")
          }
)


# For S3 class

s3_BOD = function(t, d) {
  BOD = list(Time = t, demand = d)
  class(BOD) <- "s3_BOD"
  BOD
}



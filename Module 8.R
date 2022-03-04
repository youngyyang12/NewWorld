# Module 8 assignment


# First, install "plyr" package
install.packages("plyr")
library("plyr")


# Import data set to R by using "file.choose" to selected specific file.
student_list = read.table(file.choose(), header = TRUE, sep = ",")
student_list


# Using "ddply" function to split data by gender, and calculate the average grade by gender.
student_by_gender = ddply(student_list, "Sex", transform, Grade.Average = mean(Grade))
student_by_gender


# Print data to file named "Sorted_Average_by_gender"
write.table(student_by_gender, "Sorted_Average_by_gender")
# Create a CSV file
write.table(student_by_gender, "Sorted_Average_by_gender.csv", sep = ",")


# Filter the data set, it will filter the data set with person with letter "i" in their name.
i_student_list = subset(student_list,grepl("[iI]",student_list$Name))
# Write data to a new CSV file named "DataSubset_i_student"
write.table(i_student_list,"DataSubset_i_student.csv",sep=",")

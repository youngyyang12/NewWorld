# Module 9
# In this assignment, I choose the data set "Measuring Calcium Binding to Proteins" from Vincent Arel Bundock dataset.


# read csv from URL, directly download csv file from website.
Crabship <- read.csv("https://vincentarelbundock.github.io/Rdatasets/csv/Stat2Data/CrabShip.csv")
Crabship

library(ggplot2)

# Create a Bar graph to show total Oxygen intake of crabs in different noise sources
Intake_total<- ggplot(data = Crabship, aes(x=Noise, y=Mass)) + 
  geom_bar(stat = 'identity') + 
  labs(x="Noise Sources", y="Oxygen Intake", title="Total Oxygen Intake With Different Noise Sources")

Intake_total

# Create a box plot to show range of Oxygen consumption of crabs in different noise sources
Consumption_range<- ggplot(data = Crabship, aes(x=Noise, y=Oxygen,)) + 
  geom_boxplot() + 
  labs(x="Noise Sources", y="Oxygen Consumption", title="Oxygen Consumption With Different Noise Sources")

Consumption_range


# Create a line graph to show the relationship between Oxygen intake and consumption of crabs in different noise sources
Relation<- ggplot(data = Crabship, aes(x= Mass, y= Oxygen, color= Noise)) +
  geom_line() + 
  geom_vline(xintercept = 40) +
  labs(title="Relationship Between Oxygen Consumption and Oxygen Intake in Different Noise Sources", x="Oxygen Intake", y="Oxygen Consumption")

Relation


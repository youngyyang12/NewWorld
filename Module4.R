#Module4 

#Define variables
freq<- c(0.6, 0.3, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
bloodp<- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
first<- c(1, 1, 1, 1, 0, 0, 0, 0, NA, 1)
second<- c(0, 0, 1, 1, 0, 0, 1, 1, 1, 1)
Final_decision<- c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1)


#Calculate the mean and median for some variable
bloodp_stats<- c(Mean= mean(bloodp), Median= median(bloodp))
bloodp_stats

freq_stats<- c(Mean= mean(freq), Median= median(freq))
freq_stats


#Create histogram and box plot for each variables
#Add title and change X axle label

hist(first,
     main = "Assessment by general doctor", 
     xlab = "Assesment")

hist(second,
     main = "Assessment by external doctor",
     xlab = "Assement")

hist(bloodp,
     main = "Blood Pressure",
     xlab = "Blood Pressure")

hist(Final_decision,
     main = "Final Decision",
     xlab = "Assement")


boxplot(bloodp,
        main = "Blood Presure from obervation",
        xlab = "Millimeters of mercury(mmHg)",
        ylab = "Blood Pressure",
        horizontal = TRUE)

boxplot(freq,
        main = "Frequency of hospital visits in the last 12 months",
        xlab = "Freqency",
        ylab = "Visits",
        horizontal = TRUE)


boxplot(Final_decision,
        main = "Final decision",
        xlab = "Freqency",
        ylab = "Decision",
        horizontal = TRUE)

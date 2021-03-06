#Deloiverable-1
#Use the library() function to load the dplyr package
library(dplyr)
#Import and read csv file as a dataframe.
vehicle_info <- read.csv("../MechaCar_Statistical_Analysis/MechaCar_mpg.csv")
#pass variables (i.e., columns) and add the dataframe as the data parameter
predict_MPG<- lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance +AWD, data= vehicle_info)
summary(predict_MPG)
# Get the r-sqaured value. 
summary(predict_MPG)$r.squared

#Deliverable-2
#Import and read csv file as a dataframe.
Suspensioncoil <- read.csv("../MechaCar_Statistical_Analysis/Suspension_Coil.csv")
#creates a dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil's PSI column.
total_summary <- Suspensioncoil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
# creates a new dataframe using the group_by() and the summarize() functions to group
#each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil's PSI column
lot_summary<- Suspensioncoil %>% group_by(Manufacturing_Lot)  %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
# t.test() function to determine if the PSI across all manufacturing
#lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(Suspensioncoil$PSI, mu = 1500)
#using the t.test() function and its subset() argument to determine if the PSI for each manufacturing 
#lot is statistically different from the population mean of 1,500 pounds per square inch.
Lot1 = subset(Suspensioncoil, Manufacturing_Lot == 'Lot1')
Lot2 = subset(Suspensioncoil, Manufacturing_Lot == 'Lot2')
Lot3 = subset(Suspensioncoil, Manufacturing_Lot == 'Lot3')

t.test(Lot1$PSI, mu = 1500) 
# p-value = 1
t.test(Lot2$PSI, mu = 1500)
# p-value = 0.6072
t.test(Lot3$PSI, mu = 1500)
# p-value = 0.04168

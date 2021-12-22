library(dplyr)
vehicle_info <- read.csv("../MechaCar_Statistical_Analysis/MechaCar_mpg.csv")
#pass in all six variables (i.e., columns)
#add the dataframe you created in Step 4 as the data parameter
predict_MPG<- lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance +AWD, data= vehicle_info)
summary(predict_MPG)
# Get the r-sqaured value. 
summary(predict_MPG)$r.squared

#importing csv as dataframe
Mecha_data <- read.csv('MechaCar_mpg.csv')

#grabbing dplyr library to work with
library(dplyr)

#linear regression formula
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, Mecha_data)

#summary of linear regression
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, Mecha_data))

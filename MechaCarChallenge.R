#importing csv as dataframe
Mecha_data <- read.csv('MechaCar_mpg.csv')

#grabbing dplyr library to work with
library(dplyr)

#linear regression formula
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, Mecha_data)

#summary of linear regression
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, Mecha_data))

##DELIVERABLE 2

#importing csv as dataframe
SusCoil <- read.csv('Suspension_Coil.csv')

#Make table of Suspension Coil
CoilSummary <- SusCoil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

#A lot summary of data from table
lot_summary <- SusCoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

## DELIVERABLE 3

# T Test for PSI versus population of 1,500 pounds/sq. inch
t.test(SusCoil$PSI, mu=1500)

#T Tests for each lot 
t.test(subset(SusCoil,Manufacturing_Lot=="Lot1")$PSI, mu = 1500)
t.test(subset(SusCoil,Manufacturing_Lot=="Lot2")$PSI, mu = 1500)
t.test(subset(SusCoil,Manufacturing_Lot=="Lot3")$PSI, mu = 1500)
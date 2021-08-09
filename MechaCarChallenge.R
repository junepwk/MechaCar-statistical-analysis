library(tidyverse)
library(dplyr)

# Import and read in MechaCar_mpg.csv as a dataframe
mpg_data <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# Multiple linear regression model to predict mpg
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_data) 

# Summary statistic to determine p-value and r-squared value
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_data))

# Import and read in Suspension_Coil.csv
coil_data <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# Summary statistics table for PSI column 
total_summary <- coil_data %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# Summary statistics grouped by the manufacturing lot
lot_summary <- coil_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

library(tidyverse)
library(dplyr)

# Import and read in MechaCar_mpg.csv as a dataframe
mpg_data <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# Multiple linear regression model to predict mpg
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_data) 

# Summary statistic to determine p-value and r-squared value
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_data))

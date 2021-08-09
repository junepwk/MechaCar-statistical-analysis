# MechaCar

## Overview
AutosRUs's newest prototype, the MechaCar, have been experiencing production troubles that are preventing further progression from the manufacturing team. 

With R, the following data analysis will be performed:
- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes.
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Linear Regression to Predict MPG
The variables/coefficients 'vehicle_length', 'vehicle_weight', and 'ground_clearance' (as well as intercept) are statistically providing a non-random amount of variance to the mpg values in the dataset. In other words,these variables and coefficients have a significant impact on the mpg of the vehicles and the slope of the linear model is not zero. According to the summary output, the r-squared value is 0.7149 while the p-value remained significant meaning this linear model can effectively predict the current dataset.  However, the lack of significant variables indicates that the model would not be fit to predict future data correctly (overfitting).
![linear_reg_output](https://github.com/junepwk/MechaCar-statistical-analysis/blob/main/output/linear_reg_output.png)


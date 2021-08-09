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

## Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Based on the total summary, the variance does not exceed 100 pounds per square inch.  Upon further digging on the lots separately, the variance for lot 3 exceeds the limit by at least 70 pounds per square inch, while the other two lots have very small/tight coil variance. 

#### Total Summary
![total_summary](https://github.com/junepwk/MechaCar-statistical-analysis/blob/main/output/total_summary.png)

#### Summary Based on Manufacturing Lot
![lot_summary](https://github.com/junepwk/MechaCar-statistical-analysis/blob/main/output/lot_summary.png)

## T-Tests on Suspension Coils
Assuming the significance level is 0.05, the p-values for all tests, excluding Lot 3 (p-value=0.042), are above the significance level. Therefore, we have sufficient evidence to reject the null hypothesis for Lot 3 meaning there is a statistical difference between the expected PSI standard and the standard that Lot 3 is displaying.  

#### Test Across All Lots
![t_test_collective](https://github.com/junepwk/MechaCar-statistical-analysis/blob/main/output/t_test_collective.png)

#### Lot 1
![lot1_test](https://github.com/junepwk/MechaCar-statistical-analysis/blob/main/output/lot1_test.png)

#### Lot 2
![lot2_test](https://github.com/junepwk/MechaCar-statistical-analysis/blob/main/output/lot2_test.png)

#### Lot 3
![lot3_test](https://github.com/junepwk/MechaCar-statistical-analysis/blob/main/output/lot3_test.png)

## Study Design: MechaCar vs Competition
To study how the MechaCar performs against the competition, new metrics could be introduced to the current dataset. Metrics that would interest potential consumers are highway fuel efficiency, maintenance cost, horse power and safety rating. A multiple linear regression would be performed on both datasets to test how much the variance in the dependent variable is accounted for the performance of the vehicles.  In addition, a two-sample t-test would be used to test rather there's a statistical difference between both data distribution. 

Potential Hypothesis Tests
- H Null: MechaCar's MPG Efficiency <= Competitor's 
- H Alt: MechaCar's MPG Efficiency > Competitor's

- H Null: MechaCar's Maintenance/Safety Cost Efficiency <= Competitor's 
- H Alt: MechaCar's Maintenance/Safety Cost Efficiency > Competitor's

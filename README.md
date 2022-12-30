# MechaCar Statistical Analysis
Data bootcamp week 16 - statistics and R

## Overview

## Linear Regression to Predict MPG
![screenshot of linear regression model output for mpg](https://github.com/larabjork/mechacar_statistical_analysis/blob/main/images/mpg_linear_regression.png)

* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
The p-values for vehicle length and ground clearance show that each of these variables has a statistically significant relationship with the dependent variable of miles per gallon (mpg). This relationship is indicated by the values in the column headed Pr(>|t|), evaluated against the assumed significance level of 0.05%. The p-values for vehicle length (2.60 x 10^-12^) and ground clearance (5.21 x 10^-8^) are both lower than the significance level.

The intercept's p-value (5.08 x 10^-8^) is also lower than the significance level. This means that there are other factors affecting mpg but that are not included in this model.

* Is the slope of the linear model considered to be zero? Why or why not?
The slope of the linear model is not considered to be zero, because the p-value of 5.35 x 10^-11^ is much smaller than the assumed significance level of 0.05%.

* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
The r-squared value of 0.7149 indicates that the model predicts mpg correctly approximately 71% of the time. However, as described in the course content, this is likely a case of "overfitting", where the model works for the current data but probably won't be effective with another similar dataset. Therefore, this linear model does not effectively predict mpg of MechaCar prototypes.

## Summary Statistics on Suspension Coils
* ADD SCREENSHOT OF TOTAL SUMMARY DATAFRAME
* ADD SCREENSHOT OF LOT SUMMARY DATAFRAME
* The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
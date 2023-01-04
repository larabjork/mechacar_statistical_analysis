# MechaCar Statistical Analysis
Data bootcamp week 16 - statistics and R

## Overview

## Linear Regression to Predict MPG
I ran a multiple linear regression model for miles per gallon (mpg) against the variables for vehicle length, vehicle weight, spoiler angle, ground clearance, and AWD, with the following results.

![screenshot of linear regression model output for mpg](https://github.com/larabjork/mechacar_statistical_analysis/blob/main/images/mpg_linear_regression.png)

__Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?__ 

The p-values for vehicle length and ground clearance show that each of these variables has a statistically significant relationship with the dependent variable of mpg. This relationship is indicated by the values in the column headed Pr(>|t|), evaluated against the assumed significance level of 0.05%. The p-values for vehicle length (2.60 x 10<sup>-12</sup>) and ground clearance (5.21 x 10<sup>-8</sup>) are both lower than the significance level.

The intercept's p-value (5.08 x 10<sup>-8</sup>) is also lower than the significance level. This means that there are other factors affecting mpg but that are not included in this model.

__Is the slope of the linear model considered to be zero? Why or why not?__

The slope of the linear model is not considered to be zero, because the p-value of 5.35 x 10<sup>-11</sup> is much smaller than the assumed significance level of 0.05%.

__Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?__

The r-squared value of 0.7149 indicates that the model predicts mpg correctly approximately 71% of the time. However, as described in the course content, this is likely a case of "overfitting", where the model works for the current data but probably won't be effective with another similar dataset. Therefore, this linear model does not effectively predict mpg of MechaCar prototypes.

## Summary Statistics on Suspension Coils
I generated summary statistics for all data in total and by individual manufacturing lots, with the following results.

Total summary data:
![dataframe showing total summary data on PSI for suspension coils](https://github.com/larabjork/mechacar_statistical_analysis/blob/main/images/suspension_coil_summary_data_total.png)


Summary data by manufacturing lot:
![dataframe showing summary data on PSI for each manufacturing lot of suspension coils](https://github.com/larabjork/mechacar_statistical_analysis/blob/main/images/suspension_coil_summary_data_by_lot.png)

__The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?__

The current manufacturing data meets this design specification for all manufacturing lots in total (variance = 62.293556) and for Lot 1 (variance = 0.980) and Lot 2 (variance = 7.47) individually. Data from Lot 3 (variance = 170) exceed the specification's threshold of 100 PSI.

## T-Tests on Suspension Coils
Before performing t-tests to determine if all manufacturing lots and each lot individually are statisically different from the population mean of 1,500 pounds per square inch (PSI), I generated a random sample of all the data. Population size (total number of rows of data) was 150. To determine an adequate sample size, a brief internet search turned up recommendations ranging from 15 (or 10% of total) to 142, with a minimum of 100. I elected to follow [this recommendation](https://researchbasics.education.uconn.edu/sample-size/) from the University of Connecticut School of Education and settled on 108 as my sample size.

To check the distribution of data in the popualtions versus the sample, I created visualizations. Both distributions were approximately normal and therefore met that criterion for t-tests. Those visualizations are shown below (left is population data, right is sample data).

![graph for distributions of PSI, population data](https://github.com/larabjork/mechacar_statistical_analysis/blob/main/images/PSI_distribution_all_data.png)
![graph for distributions of PSI, sample data](https://github.com/larabjork/mechacar_statistical_analysis/blob/main/images/PSI_distribution_sample_data.png)

### Sample of Total Population (All Manufacturing Lots)

A one-sample t-test was performed to determine whether the PSI across all manufacturing lots is statistically different from the population mean of 1,500 PSI. Results are as follows:

![screenshot of t-test results for sample of total population, all lots](https://github.com/larabjork/mechacar_statistical_analysis/blob/main/images/t_test_sample_all_data.png)

The p-value of 0.5678 is above the significance level of 0.05. Therefore, the two means are statistically similar and the null hypothesis is not rejected. 

### Subsets of Data by Manufacturing Lot 
For each of three manufacturing lots, one-sample t-test were performed to determined whether the PSI for that lot was statistically different from the population mean of 1,500 PSI. Results are as follows.

#### Lot 1

![screenshot of t-test results for manufacturing lot 1](https://github.com/larabjork/mechacar_statistical_analysis/blob/main/images/t_test_lot_1.png)

The p-value for the Lot 1 t-test was 1.568 x 10<sup>-11</sup>, which is smaller than the significance level of 0.05. Therefore, the means for Lot 1 and the population are statistically different and there is sufficient evidence to reject the null hypothesis.

#### Lot 2

![screenshot of t-test results for manufacturing lot 2](https://github.com/larabjork/mechacar_statistical_analysis/blob/main/images/t_test_lot_2.png)

The p-value for the Lot 2 t-test was 0.0005911, which is smaller than the significance level of 0.05. Therefore, the means for Lot 2 and the population are statistically different and there is sufficient evidence to reject the null hypothesis.

#### Lot 3

![screenshot of t-test results for manufacturing lot 3](https://github.com/larabjork/mechacar_statistical_analysis/blob/main/images/t_test_lot_3.png)

The p-value for the Lot 3 t-test was 0.1589, which is larger than the significance level of 0.05. Therefore, the means for Lot 3 and the population are statistically similar and the null hypothesis is not rejected. 
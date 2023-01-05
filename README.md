# MechaCar Statistical Analysis
Data bootcamp week 16 - statistics and R

## Overview
This independent challenge exercise used data from a fictional car company (MechaCar) to explore statistical testing using R and R Studio. Specific tasks included:

* Performing multiple linear regression analysis to identify which variables in the dataset predict the miles per gallon (mpg) performance of MechaCar prototypes.
* Collecting summary statistics on the pounds per square inch (PSI) of the suspension coils from three different manufacturing lots.
* Running t-tests to determine if the manufacturing lots are statistically different from the mean population.
* Designing a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers.

## Linear Regression to Predict MPG
I ran a multiple linear regression model for mpg against the variables for vehicle length, vehicle weight, spoiler angle, ground clearance, and AWD, with the following results.

![screenshot of linear regression model output for mpg](https://github.com/larabjork/mechacar_statistical_analysis/blob/main/images/mpg_linear_regression.png)

__Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?__ 

The p-values for vehicle length and ground clearance show that each of these variables has a statistically significant (i.e, non-random) relationship with the dependent variable of mpg. This relationship is indicated by the values in the column headed Pr(>|t|), evaluated against the assumed significance level of 0.05. The p-values for vehicle length (2.60 x 10<sup>-12</sup>) and ground clearance (5.21 x 10<sup>-8</sup>) are both lower than the significance level.

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

### Sample of Total Population (All Manufacturing Lots)
Before performing t-tests to determine if all manufacturing lots  are statisically different from the population mean of 1,500 pounds per square inch (PSI), I generated a random sample of all the data. Population size (total number of rows of data) was 150. To determine an adequate sample size, a brief internet search turned up recommendations ranging from 15 (or 10% of total) to 142, with a minimum of 100. I elected to follow [this recommendation](https://researchbasics.education.uconn.edu/sample-size/) from the University of Connecticut School of Education and settled on 108 as my sample size.

To check the distribution of data in the populations versus the sample, I created visualizations. Both distributions were approximately normal and therefore met that criterion for t-tests. Those visualizations are shown below (left is population data, right is sample data).

![graph for distributions of PSI, population data](https://github.com/larabjork/mechacar_statistical_analysis/blob/main/images/PSI_distribution_all_data.png)
![graph for distributions of PSI, sample data](https://github.com/larabjork/mechacar_statistical_analysis/blob/main/images/PSI_distribution_sample_data.png)

I performed a one-sample t-test to determine whether the PSI across a sample of all manufacturing lots is statistically different from the population mean of 1,500 PSI. Results are as follows:

![screenshot of t-test results for sample of total population, all lots](https://github.com/larabjork/mechacar_statistical_analysis/blob/main/images/t_test_sample_all_data.png)

The p-value of 0.5678 is above the significance level of 0.05. Therefore, the two means are statistically similar and the null hypothesis is not rejected. 

### Subsets of Data by Manufacturing Lot 
For each of three manufacturing lots, a one-sample t-test was performed to determined whether the PSI for that lot was statistically different from the population mean of 1,500 PSI. Results are as follows.

#### Lot 1

![screenshot of t-test results for manufacturing lot 1](https://github.com/larabjork/mechacar_statistical_analysis/blob/main/images/t_test_lot_1.png)

The p-value for the Lot 1 t-test was 1.568 x 10<sup>-11</sup>, which is smaller than the significance level of 0.05. Therefore, the means for Lot 1 and the population are statistically different and there is sufficient evidence to reject the null hypothesis.

#### Lot 2

![screenshot of t-test results for manufacturing lot 2](https://github.com/larabjork/mechacar_statistical_analysis/blob/main/images/t_test_lot_2.png)

The p-value for the Lot 2 t-test was 0.0005911, which is smaller than the significance level of 0.05. Therefore, the means for Lot 2 and the population are statistically different and there is sufficient evidence to reject the null hypothesis.

#### Lot 3

![screenshot of t-test results for manufacturing lot 3](https://github.com/larabjork/mechacar_statistical_analysis/blob/main/images/t_test_lot_3.png)

The p-value for the Lot 3 t-test was 0.1589, which is larger than the significance level of 0.05. Therefore, the means for Lot 3 and the population are statistically similar and the null hypothesis is not rejected. 

### Study Design: MechaCar vs Competition

The aim of this study design is to quantify how the MechaCar performs against its competitiors, on metrics that matter to consumers.

#### Metrics to Test

According to [Statista.com](https://www.statista.com/chart/13075/most-important-factors-when-buying-a-car/#:~:text=According%20to%20data%20from%20Statista's,top%20priority%20when%20shopping%20around.), the top two factors influencing car-buying among 8,400 US adults from a survey conducted July 5, 2021 to June 2, 2022, are fuel-efficiency and safety, so this study design will focus on those two.

#### Null Hypothees and Alternative Hypotheses
I would like to be able to answer these questions:
* Do MechaCars outperform cars made by other companies on fuel-efficiency?
* Are MechaCars safer than cars made by other companies?

To do so, we will test these hypotheses.
__Fuel efficiency__
* Null hypothesis: The fuel-efficiency of a car has no relationship to the company that made it.
* Alternative hypothesis: The fuel-efficiency of a car is affected by the company that made it; some companies will consistenly produce more fuel-efficient cars.

__Safety__
* Null hypothesis: The safety rating of a car has no relationship to the company that made it.
* Alternative hypothesis: The safety rating of a car is affected by the company that made it; some companies will consistenly produce safer cars.

#### Proposed Statistical Tests and Rationale
I would perform ANOVA tests for both cases because there would be a single dependent variable (mpg and safety) versus a single independent variable with multiple groups (car companies). 

#### Data Needed for Statistical Tests
For the fuel-efficiency ANOVA test, I would need mpg data for every car model made by every car company. For the safety ANOVA test, I would need safety data for every car model made by every car company. 

#### Further Considerations
Using these averages would answer a high-level question about each company's overall brand. But at the level of influencing buyer decisions or developing more targetted marketing campaigns, they likely would not provide as useful picture. For example, if summary statistics for a manufacturer showed a considerable range of performance on either metric based on vehicle class, afurther step would be to group each car company's data by vehicle class, then compare using ANOVA.




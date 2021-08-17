# MechaCar_Statistical_Analysis
## Linear Regression to Predict MPG
Below is the output from the multiple linear regression:

  ![Linear Regression Output](https://github.com/nhipqnguyen/MechaCar_Statistical_Analysis/blob/main/Analyses/linear_regression_output.png)

- According to our results, vehicle length and ground clearance (as well as intercept) are statistically likely to provide non-random amounts of variance to the linear model. In other words, the vehicle length and ground clearance have a significant impact on the mpg values. 
- The p-value of our linear regression analysis is 5.35e-11, which is much smaller than our assumed significance level of 0.05. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.
- From our linear regression model, the r-squared value is 0.7149, which means that roughly 71% of the variablilty of our dependent variable (mpg predictions) is explained using this linear model. We can say that this linear model predicts mpg of MechaCar prototypes quite effectively.

## Summary Statistics on Suspension Coils
- Below is the total_summary dataframe of the suspension coil's PSI column:

  ![total summary](https://github.com/nhipqnguyen/MechaCar_Statistical_Analysis/blob/main/Analyses/total_summary_PSI.png)

  According to our results, the variance of the suspension coils in total is approximately 62, which does not exceed the upper limit 100 pounds per square inch of the design specifications. That being said, in total, all manufacturing lots meet this design specification.
- Now let's take a look at the summary by lot of the suspension coil's PSI column:

 !lot summary](https://github.com/nhipqnguyen/MechaCar_Statistical_Analysis/blob/main/Analyses/lot_summary_PSI.png)

  As shown in the above dataframe, the variances of the suspension coils in lots 1 & 2 are significantly smaller than 100 PSI (0.98 and 7.47, respectively) while that in Lot 3 exceeds the upper limit 100 PSI by about 70%. We can conclude that individually, manufacturing lots 1 and 2 meet the design specification while manufacturing lot 3 fails to do so.

## T-Tests on Suspension Coils
- Below is the output for one-sample t-test that compares all manufactoring lots against mean PSI of the population:

  ![PSI_all_lots_t_test](https://github.com/nhipqnguyen/MechaCar_Statistical_Analysis/blob/main/Analyses/PSI_all_lots_t_test.png)

  Our p-value is above our significance level 0.05. Therefore, we do not have sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar.
- Below is the output for one-sample t-test that compares manufactoring lot 1's mean against mean PSI of the population:

  ![PSI_lot1_t_test](https://github.com/nhipqnguyen/MechaCar_Statistical_Analysis/blob/main/Analyses/PSI_lot1_t_test.png)

  Our p-value is below our significance level 0.05. Therefore, we have sufficient evidence to reject the null hypothesis, and we would state that there is a statistical difference between the mean of manufactoring lot 1's PSI and the presumed population mean.
- Below is the output for one-sample t-test that compares manufactoring lot 2's mean against mean PSI of the population:

  ![PSI_lot2_t_test](https://github.com/nhipqnguyen/MechaCar_Statistical_Analysis/blob/main/Analyses/PSI_lot2_t_test.png)

  Our p-value is below our significance level 0.05. Therefore, we have sufficient evidence to reject the null hypothesis, and we would state that there is a statistical difference between the mean of manufactoring lot 2's PSI and the presumed population mean.
- Below is the output for one-sample t-test that compares manufactoring lot 3's mean against mean PSI of the population:

  ![PSI_lot3_t_test](https://github.com/nhipqnguyen/MechaCar_Statistical_Analysis/blob/main/Analyses/PSI_lot3_t_test.png)

  Our p-value is above our significance level 0.05. Therefore, we don't have sufficient evidence to reject the null hypothesis, and we would state that there is no statistical difference between the mean of manufactoring lot 3's PSI and the presumed population mean.

## Study Design: MechaCar vs. Competition
- To compare performance of the MechaCar vehicles against performance of vehicles from other manufactures, we can use mpg fuel efficiency as a success metric.
- For the test of safety rating:
  - Null hypothesis: The means of mpg fuel efficiency of all groups are equal.
  - Alternate hypothesis: At least one of the means is different from all other groups.
- Since we are testing mpg fuel efficiency (a numerical and continuous dependent variable) across different cars based on vehicle brand (a categorical independent variable), a one-way ANOVA is a good test to use.
- To perform this ANOVA test, we need to collect mpg data for cars of the same type from MechaCar and its competitors.
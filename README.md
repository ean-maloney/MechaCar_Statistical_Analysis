# MechaCar Statistical Analysis

## Multiple Linear Regression to Predict MPG

R regression output:
```Call:
lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
    ground_clearance + AWD, data = mpg_df)

Residuals:
     Min       1Q   Median       3Q      Max 
-19.4701  -4.4994  -0.0692   5.4433  18.5849 

Coefficients:
                   Estimate Std. Error t value Pr(>|t|)    
(Intercept)      -1.040e+02  1.585e+01  -6.559 5.08e-08 ***
vehicle_length    6.267e+00  6.553e-01   9.563 2.60e-12 ***
vehicle_weight    1.245e-03  6.890e-04   1.807   0.0776 .  
spoiler_angle     6.877e-02  6.653e-02   1.034   0.3069    
ground_clearance  3.546e+00  5.412e-01   6.551 5.21e-08 ***
AWD              -3.411e+00  2.535e+00  -1.346   0.1852    
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 8.774 on 44 degrees of freedom
Multiple R-squared:  0.7149,	Adjusted R-squared:  0.6825 
F-statistic: 22.07 on 5 and 44 DF,  p-value: 5.35e-11
```

Based on the linear model used to predict MPG based on vehicle length, weight, spoiler angle, ground clearance, and transmission type (AWD v. non-AWD), two of these factors - vehicle length and ground clearance - were determined to contribute to a statistically significant degree to vehicle MPG at the 95% confidence level. The slope of the multiple regression is therefore non-zero with regard to these variables since they have non-zero statistically-significant coefficients in the MLR equation. The adjusted R-squared value for this regression was 0.6825, meaning that ~68% of the variability in MPG can be explained from the variables in the model (see: https://www.investopedia.com/ask/answers/012615/whats-difference-between-rsquared-and-adjusted-rsquared.asp). This indicates that the model is a good start, but not very effective at predicting MPG overall.

## Summary Statistics on Suspension Coils
Summary for all coils:
```
  mean   median   variance     sd
1498.78   1500   62.29356   7.892627
```
Summary by Lot:
```
Manufacturing_Lot  mean   median   variance  sd
1 Lot1             1500    1500     0.980   0.990
2 Lot2             1500.   1500     7.47    2.73 
3 Lot3             1496.   1498.    170.    13.0  
```
According to the summaries above, the overall variance in suspension coils is less than the limit of 100 psi. However, when we group the suspension coils by lot, we see that the variance from Lot3 is far above this limit.

## T-Tests on Suspension Coils
Population Mean v. Expected Mean T-Test
```
t = -1.8931, df = 149, p-value = 0.06028
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1497.507 1500.053
sample estimates:
mean of x 
  1498.78 
```
One-Sample T-Test on Lot1 Mean PSI:
```
t = 0, df = 49, p-value = 1
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1499.719 1500.281
sample estimates:
mean of x 
     1500 
```
One-Sample T-Test on Lot2 Mean PSI:
```
t = 0.51745, df = 49, p-value = 0.6072
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1499.423 1500.977
sample estimates:
mean of x 
   1500.2 
```
One-Sample T-Test on Lot3 Mean PSI:
```
t = -2.0916, df = 49, p-value = 0.04168
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1492.431 1499.849
sample estimates:
mean of x 
  1496.14 
```

Based on the results of the T-test on the entire population of coils, because the p-value of the test is greater than 0.05, we cannot assert that the mean psi for coils in the entire population is significantly different from the expected mean of 1500 psi.

Because the p-values for the T-tests on Lot1 and Lot2 are greater than 0.05, we cannot show that the mean psi for coils in these lots is significantly different from the predicted mean of 1500 psi. However, because the p-value for Lot3 is less than 0.05, we can assert that the mean psi from this lot is significantly different than 1500 psi. 

## Study Design: MechaCar vs. Competition


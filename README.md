# MechaCar_Statistical_Analysis
## Overview


## Results:

## Linear Regression to Predict MPG
> summary(lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data = mechacar_mpg_df))

Call:
lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
    ground_clearance + AWD, data = mechacar_mpg_df)

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
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1 '

Residual standard error: 8.774 on 44 degrees of freedom
Multiple R-squared:  0.7149,	Adjusted R-squared:  0.6825 
F-statistic: 22.07 on 5 and 44 DF,  p-value: 5.35e-11

- The "vehicle_length" and "ground_clearance" variables/coefficients provided a non-random amount of variance to the mpg values in the dataset.A linear regression model run on these variables against figures for MPG, resulted in p-values of 2.6x10-12 and 5.21x10-8, respectively. In addition, the intercept was also statistically significant.
- The slope of the linear model can not considered to be zero. The p-value: 5.35e-11 is lower than even an extreme level of significance, and thus the null hypothesis must be rejected. This means that the relationship between our variables and the mpg is subject to more than random chance.
- This linear model predict mpg of MechaCar prototypes with some relative effectiveness. The 
Multiple R-squared: 0.7149 which shows that model is 71% accurate.

## Summary Statistics on Suspension Coils
# Total Summary

# Lot Summary

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. The current manufacturing data does not meet this design specification for all manufacturing lots in total. While the overall variance, as shown in the Total Summary data above, is under 100 psi and meets specifications, there is a problem with one of the individual lots. As shown in the Lot Summary stats, the variance for Lot # 3 is well over the acceptable threshold i.e. 170.28.

## T-Tests on Suspension Coils

> t.test(suspension_coil_df$PSI, mu=1500)

	One Sample t-test

data:  suspension_coil_df$PSI
t = -1.8931, df = 149, p-value = 0.06028
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1497.507 1500.053
sample estimates:
mean of x 
  1498.78 
- The  results of the T-test for the suspension coils across all manufacturing lots shows that they are not statistically different from the population mean, and the "p-value = 0.06028" is not low enough  for us to reject the null hypothesis.


  > t.test(subset(suspension_coil_df,Manufacturing_Lot=="Lot1")$PSI, mu = 1500)

	One Sample t-test

data:  subset(suspension_coil_df, Manufacturing_Lot == "Lot1")$PSI
t = 0, df = 49, p-value = 1
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1499.719 1500.281
sample estimates:
mean of x 
     1500 
- The results of the T-test for the suspension coils for Lot 1 shows that they are not statistically different from the population mean, and the " p-value = 1 "is not low enough  for us to reject the null hypothesis.
>
 t.test(subset(suspension_coil_df,Manufacturing_Lot=="Lot2")$PSI, mu = 1500)

	One Sample t-test

data:  subset(suspension_coil_df, Manufacturing_Lot == "Lot2")$PSI
t = 0.51745, df = 49, p-value = 0.6072
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1499.423 1500.977
sample estimates:
mean of x 
   1500.2 
- The results of the T-test for the suspension coils for Lot 2 shows that they are not statistically different from the population mean, and the "p-value = 0.6072" is not low enough for us to reject the null hypothesis.

> t.test(subset(suspension_coil_df,Manufacturing_Lot=="Lot3")$PSI, mu = 1500)

	One Sample t-test

data:  subset(suspension_coil_df, Manufacturing_Lot == "Lot3")$PSI
t = -2.0916, df = 49, p-value = 0.04168
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1492.431 1499.849
sample estimates:
mean of x 
  1496.14 
- The results of the T-test for the suspension coils for Lot 3 shows that they are slightly statistically different from the population mean, and the p-value = 0.04168 is low enough for us to reject the null hypothesis. This lot may be need to be evaluated.

## Study Design: MechaCar vs Competition

1) What metric or metrics are you going to test?
The next metrics to test should be the safety rating, horsepower, and highway fuel efficiency, which address some safety concerns of consumers.

2) What is the null hypothesis or alternative hypothesis?
The null hypothesis is that the mean of the safety rating is zero. The alternative hypothesis is that the mean of the safety rating is not zero.

3) What statistical test would you use to test the hypothesis? And why?
Using a multiple linear regression statistical summary would show how the variables impact the safety ratings for MechaCar and their competitors.

4)What data is needed to run the statistical test?
A random sample of n > 30 for MechaCar and their competitor, would need to be collected including the safety ratings, highway fuel efficiency, and horsepower plus running the data through RStudio.







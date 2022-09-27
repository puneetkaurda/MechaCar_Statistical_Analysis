# Linear Regression to Predict MPG
library(dplyr)
#Import and read
mechacar_mpg_df <- read.csv(file='MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)
head(mechacar_mpg_df)
#Perform linear regression 
lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data = mechacar_mpg_df)
#Determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data = mechacar_mpg_df))

# Linear Regression to Predict MPG
library(dplyr)
#Import and read csv
mechacar_mpg_df <- read.csv(file='MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)
head(mechacar_mpg_df)
#Perform linear regression 
lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data = mechacar_mpg_df)
#Determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data = mechacar_mpg_df))
#Create Visualizations for the Trip Analysis
#Suspension_coil Analysis
#import and read Suspension_Coil.csv
suspension_coil_df <- read.csv(file = 'Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
head(suspension_coil_df)
#creates a total_summary dataframe 
#using the summarize() function to get the mean, median, variance,
#and standard deviation of the suspension coil’s PSI column.
total_summary <- suspension_coil_df %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
#creates a lot_summary dataframe 
#using the group_by() and the summarize() functions to group each manufacturing lot 
#by the mean, median, variance, 
#and standard deviation of the suspension coil’s PSI column.
lot_summary <- suspension_coil_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

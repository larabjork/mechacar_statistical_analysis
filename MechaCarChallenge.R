
library(tidyverse)

mechacar <- read.csv('MechaCar_mpg.csv', stringsAsFactors = F)
head(mechacar)

# Linear regression for mpg
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar)
# Statistical summary for linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar)
)

# Suspension coil summary dataframes
suspension_coil <- read.csv('Suspension_Coil.csv', stringsAsFactors = F)

head(suspension_coil)

typeof(suspension_coil$PSI)
suspension_coil$PSI <- as.double(suspension_coil$PSI)
typeof(suspension_coil$PSI)
total_summary <- suspension_coil %>% group_by(PSI) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')
head(total_summary)

summarize(float_)
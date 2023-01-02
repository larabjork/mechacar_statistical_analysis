
library(tidyverse)

mechacar <- read.csv('MechaCar_mpg.csv', stringsAsFactors = F)
head(mechacar)

# Linear regression for mpg
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar)
# Statistical summary for linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar)
)

# Suspension coil summary dataframe
suspension_coil <- read.csv('Suspension_Coil.csv', stringsAsFactors = F)
head(suspension_coil)
suspension_coil$PSI <- as.double(suspension_coil$PSI)
total_summary <- suspension_coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')
head(total_summary)

# Suspension coild summary dataframe by manufacturing lot
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')
head(lot_summary)

# T-tests on suspension coils
# Visualize population data 
plt <- ggplot(suspension_coil,aes(x=PSI))
plt + geom_density()
# Random sample of all data
nrow(suspension_coil)
sample_suspension_coil <- suspension_coil %>% sample_n(108)
# Visualize sample data
plt <- ggplot(sample_suspension_coil,aes(x=PSI))
plt + geom_density()

# T-test for sample vs population data
t.test(sample_suspension_coil$PSI,mu=mean(suspension_coil$PSI))

# T-test for Lot 1 vs population data
t.test(sample_suspension_coil$PSI,mu=mean(suspension_coil$PSI),subset(sample_suspension_coil, Manufacturing_Lot = "Lot1"))

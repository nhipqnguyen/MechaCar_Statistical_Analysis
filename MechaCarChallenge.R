library(dplyr)

# Import and read the MechaCar_mpg file
mechaCar_df <- read.csv(file='Resources/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# Perform multiple linear regression on 6 variables
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCar_df)

# Generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCar_df))

# Import and read the Suspension_Coil file
suspension_coil_df <- read.csv(file='Resources/Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# Create summary table for PSI column
total_summary <- suspension_coil_df %>% 
  summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')
total_summary

# Create lot_summary dataframe
lot_summary <- suspension_coil_df %>% group_by(Manufacturing_Lot) %>%
  summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')
lot_summary

# create a sample table from the suspension coil population
sample_table <- suspension_coil_df %>% sample_n(50)

# Perform t-test to compare the mean of the PSI across all manufacturing lots 
# and the population mean
t.test(sample_table$PSI,mu=mean(suspension_coil_df$PSI))

# create a "Lot1" sample table from the suspension coil population
table_lot1 <- suspension_coil_df %>% sample_n(100) %>% filter(Manufacturing_Lot=="Lot1")

# Perform t-test to compare the mean of the PSI in lot 1 
# and the population mean
t.test(table_lot1$PSI,mu=mean(suspension_coil_df$PSI))

# create a "Lot2" sample table from the suspension coil population
table_lot2 <- suspension_coil_df %>% sample_n(100) %>% filter(Manufacturing_Lot=="Lot2")

# Perform t-test to compare the mean of the PSI in lot 2 
# and the population mean
t.test(table_lot2$PSI,mu=mean(suspension_coil_df$PSI))

# create a "Lot3" table from the suspension coil population
table_lot3 <- suspension_coil_df %>% sample_n(100) %>% filter(Manufacturing_Lot=="Lot3")
# Perform t-test to compare the mean of the PSI in lot 3 
# and the population mean
t.test(table_lot3$PSI,mu=mean(suspension_coil_df$PSI))

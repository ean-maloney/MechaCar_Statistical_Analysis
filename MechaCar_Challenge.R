library(dplyr)
mpg_df = read.csv('MechaCar_mpg.csv', header = T, sep = ',')
summary(lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mpg_df))

coil_df = read.csv('Suspension_Coil.csv', header = T, sep = ',')
total_summary = coil_df %>% summarize(mean = mean(PSI), median = median(PSI), variance = var(PSI), sd = sd(PSI))
lot_summary = coil_df %>% group_by(Manufacturing_Lot) %>% summarize(mean = mean(PSI), median = median(PSI), variance = var(PSI), sd = sd(PSI)) 

##Based on http://cran.nexr.com/doc/contrib/Lemon-kickstart/kr_ttest.html
#t-test Lot1/population
t.test(subset(coil_df$PSI, coil_df$Manufacturing_Lot == 'Lot1'), mu = 1500)
#t-test Lot2/population
t.test(subset(coil_df$PSI, coil_df$Manufacturing_Lot == 'Lot2'), mu = 1500)    
#t-test Lot3/population
t.test(subset(coil_df$PSI, coil_df$Manufacturing_Lot == 'Lot3'), mu = 1500)      

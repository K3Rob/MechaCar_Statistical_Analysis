#Deliverable 1
library(dplyr)

#read in MechaCar_mpg.csv
car_data <- read.csv(file='Resources/MechaCar_mpg.csv')

#Linear reg on car_data
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = car_data)

#generate summary stats on car_data
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = car_data))


#Deliverable 2
#read in Suspension_Coil.csv
coil_data <- read.csv('Resources/Suspension_Coil.csv')

#set up for total_summary df
Mean = mean(coil_data$PSI)
Median=median(coil_data$PSI)
Variance=var(coil_data$PSI)
SD = sd(coil_data$PSI)

#create total_summary df
total_summary <- data.frame(Mean,Median,Variance,SD)

#create lot_summary df
lot_summary <- coil_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median = median(PSI),Variance = var(PSI),SD = sd(PSI), .groups = 'keep')


#Deliverable 3
#T-test coil_data
t.test((coil_data$PSI),mu = 1500)

# t-test by lot
t.test(subset(coil_data,Manufacturing_Lot =="Lot1")$PSI,mu = 1500)
t.test(subset(coil_data,Manufacturing_Lot =="Lot2")$PSI,mu = 1500)
t.test(subset(coil_data,Manufacturing_Lot =="Lot3")$PSI,mu = 1500)

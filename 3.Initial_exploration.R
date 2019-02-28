#######################################################################
# PROJECT:IoT Analytics Domain Research and Exploratory Data Analysis #
# NAME:Francesca Prata                                                #
# SCRIPT:Initial exploration                                          #
# DATE:14-02-2019                                                     #
# VERSION:5                                                           #
#######################################################################

####################
#Calculate averages# 
####################

#Global active energy per weekday
Yrs2007_2009 %>%
  group_by(Weekdays) %>%
  summarise(avg_energy = mean(Global_active_power, na.rm = TRUE))

#Submeter 1 per month
Yrs2007_2009 %>%
  group_by(Month) %>%
  summarise(avg_sub1 = mean(Sub_metering_1, na.rm = TRUE))

#Submeter 2 per month
Yrs2007_2009 %>%
  group_by(Month) %>%
  summarise(avg_sub2 = mean(Sub_metering_2, na.rm = TRUE))

#Submeter 3 per month
Yrs2007_2009 %>%
  group_by(Month) %>%
  summarise(avg_sub3 = mean(Sub_metering_3, na.rm = TRUE))

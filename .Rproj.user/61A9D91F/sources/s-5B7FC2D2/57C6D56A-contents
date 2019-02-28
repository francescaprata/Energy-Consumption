###########################################################
# PROJECT:IoT Analytics Visualize and Analyze Energy Data #
# NAME:Francesca Prata                                    #
# SCRIPT:Pre-processing and initial visualization         #
# DATE:26-02-2019                                         #
# VERSION:7                                               #
###########################################################

#Retrieve previous data frame 
source(file = "1.Data_Setup_v4.R")


######################
#Calculating averages#
######################

#Calculating the average per YEAR
avgyearALL <- Yrs2007_2010 %>%
  group_by(Year) %>%
  summarise(meanSub_1 = mean(Sub_metering_1),
            meanSub_2 = mean(Sub_metering_2),
            meanSub_3 = mean(Sub_metering_3),
            meanSub_4 = mean(Active_energy),
            meanGAP = mean(GAP))

#Calculating the average per MONTH
avgmonthALL <- Yrs2007_2010 %>%
  group_by(Year,
           Month) %>%
  summarise(meanSub_1 = mean(Sub_metering_1),
            meanSub_2 = mean(Sub_metering_2),
            meanSub_3 = mean(Sub_metering_3),
            meanSub_4 = mean(Active_energy),
            meanGAP = mean(GAP))

#Calculating the average per WEEK
avgweekALL <- Yrs2007_2010 %>%
  group_by(Year,
           Week) %>%
  summarise(meanSub_1 = mean(Sub_metering_1),
            meanSub_2 = mean(Sub_metering_2),
            meanSub_3 = mean(Sub_metering_3),
            meanSub_4 = mean(Active_energy),
            meanGAP = mean(GAP))

#Calculating the average per DAY
avgdayALL <- Yrs2007_2010 %>%
  group_by(Year,
           Month,
           Weekdays,
           Day) %>%
  summarise(meanSub_1 = mean(Sub_metering_1),
            meanSub_2 = mean(Sub_metering_2),
            meanSub_3 = mean(Sub_metering_3),
            meanSub_4 = mean(Active_energy),
            meanGAP = mean(GAP))

#Calculating the average per HOUR
avghourALL <- Yrs2007_2010 %>%
  group_by(Year,
           Month,
           Weekdays,
           Day,
           Hour) %>%
  summarise(meanSub_1 = mean(Sub_metering_1),
            meanSub_2 = mean(Sub_metering_2),
            meanSub_3 = mean(Sub_metering_3),
            meanSub_4 = mean(Active_energy),
            meanGAP = mean(GAP))

###################################
#Subsets monthly averages per year#
###################################

#2007
avgmonth2007 <- avgmonthALL %>%
  filter(Year == 2007) 

#2008
avgmonth2008 <- avgmonthALL %>%
  filter(Year == 2008) 

#2009
avgmonth2009 <- avgmonthALL %>%
  filter(Year == 2009) 

#2010
avgmonth2010 <- avgmonthALL %>%
  filter(Year == 2010) 
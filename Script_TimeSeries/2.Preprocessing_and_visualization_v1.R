##PROJECT:IoT Analytics Visualize and Analyze Energy Data
##NAME:Francesca Prata
##SCRIPT:Pre-processing and initial visualization 
##DATE:19-02-2019
##VERSION:1

##TOTAL
##Calculating the total and average per DAY of all submeters
totaldayALL <- Yrs2007_2010 %>%
  group_by(Year,
           Quarter,
           Month,
           Week,
           Weekdays,
           Day) %>%
  summarise(totalSub_1 = sum(Sub_metering_1),
            totalSub_2 = sum(Sub_metering_2),
            totalSub_3 = sum(Sub_metering_3))

avgdayALL <- Yrs2007_2010 %>%
  group_by(Year,
           Quarter,
           Month,
           Week,
           Weekdays,
           Day) %>%
  summarise(meanSub_1 = mean(Sub_metering_1),
            meanSub_2 = mean(Sub_metering_2),
            meanSub_3 = mean(Sub_metering_3))

##Calculating the total and average per HOUR of all submeters
totalhourALL <- Yrs2007_2010 %>%
  group_by(Year,
           Quarter,
           Month,
           Week,
           Weekdays,
           Day,
           Hour) %>%
  summarise(totalSub_1 = sum(Sub_metering_1),
            totalSub_2 = sum(Sub_metering_2),
            totalSub_3 = sum(Sub_metering_3))

avghourALL <- Yrs2007_2010 %>%
  group_by(Year,
           Quarter,
           Month,
           Week,
           Weekdays,
           Day,
           Hour) %>%
  summarise(meanSub_1 = mean(Sub_metering_1),
            meanSub_2 = mean(Sub_metering_2),
            meanSub_3 = mean(Sub_metering_3))

##//////////////////////// SEASON PER DAY //////////////////////////##

##TOTALS##
##Spring
totaldaySpring <- Spring %>%
  group_by(Year,
           Month,
           Week,
           Day) %>%
  summarise(totalSub_1 = sum(Sub_metering_1),
            totalSub_2 = sum(Sub_metering_2),
            totalSub_3 = sum(Sub_metering_3))

##Summer
totaldaySummer <- Summer %>%
  group_by(Year,
           Month,
           Day) %>%
  summarise(totalSub_1 = sum(Sub_metering_1),
            totalSub_2 = sum(Sub_metering_2),
            totalSub_3 = sum(Sub_metering_3))

##Autumn
totaldayAutumn <- Autumn %>%
  group_by(Year,
           Month,
           Day) %>%
  summarise(totalSub_1 = sum(Sub_metering_1),
            totalSub_2 = sum(Sub_metering_2),
            totalSub_3 = sum(Sub_metering_3))

##Winter
totaldayWinter <- Winter %>%
  group_by(Year,
           Month,
           Day) %>%
  summarise(totalSub_1 = sum(Sub_metering_1),
            totalSub_2 = sum(Sub_metering_2),
            totalSub_3 = sum(Sub_metering_3))
  

##AVERAGES##
##Spring
avgdaySpring <- Spring %>%
  group_by(Year,
           Quarter,
           Month,
           Week,
           Weekdays,
           Day) %>%
  summarise(meanSub_1 = mean(Sub_metering_1),
            meanSub_2 = mean(Sub_metering_2),
            meanSub_3 = mean(Sub_metering_3))

##Summer
avgdaySummer <- Summer %>%
  group_by(Year,
           Month,
           Week,
           Weekdays,
           Day) %>%
  summarise(meanSub_1 = mean(Sub_metering_1),
            meanSub_2 = mean(Sub_metering_2),
            meanSub_3 = mean(Sub_metering_3))

##Autumn
avgdayAutumn <- Autumn %>%
  group_by(Year,
           Month,
           Week,
           Weekdays,
           Day) %>%
  summarise(meanSub_1 = mean(Sub_metering_1),
            meanSub_2 = mean(Sub_metering_2),
            meanSub_3 = mean(Sub_metering_3))

##Winter
avgdayWinter <- Winter %>%
  group_by(Year,
           Month,
           Week,
           Weekdays,
           Day) %>%
  summarise(meanSub_1 = mean(Sub_metering_1),
            meanSub_2 = mean(Sub_metering_2),
            meanSub_3 = mean(Sub_metering_3))

##Subsets of day and week and their corresponding plots
## Subset average power consumption on 9th day of January 2008 
houseAvgDay <- filter(avghourALL, 
                     Year == 2008 & Month == 1 & Day == 9)

houseDay <- filter(totalhourALL, 
                   Year == 2008 & Month == 1 & Day == 9) 

## Plot sub-meter 1, 2 and 3 with title, legend and labels - All observations 
plot_ly(houseDay, x = ~houseDay10$Hour, y = ~houseDay$totalSub_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~houseDay$totalSub_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~houseDay$totalSub_3, name = 'Water Heater & AC', mode = 'lines') %>%
  layout(title = "Total Power Consumption January 9th, 2008",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (Average watt-hours)"))

##Plotting 3rd week of Jan 2008 visualization - LOOK at is again
houseWeek <- filter(avghourALL, 
                      Year == 2008 & Month == 1 & Week == 3)
                                                             
plot_ly(houseWeek, x = ~houseWeek$Day, y = ~houseWeek$meanSub_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~houseWeek$meanSub_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~houseWeek$meanSub_3, name = 'Water Heater & AC', mode = 'lines') %>%
  layout(title = "Average Power Consumption 3rd week January 2008",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))

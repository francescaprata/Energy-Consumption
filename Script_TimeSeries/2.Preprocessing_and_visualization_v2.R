##PROJECT:IoT Analytics Visualize and Analyze Energy Data
##NAME:Francesca Prata
##SCRIPT:Pre-processing and initial visualization 
##DATE:20-02-2019
##VERSION:2

##TOTAL
##Calculating the average per DAY of all submeters
avgdayALL <- Yrs2007_2010 %>%
  group_by(Year,
           Quarter,
           Month,
           Week,
           Weekdays,
           Day) %>%
  summarise(meanSub_1 = mean(Sub_metering_1),
            meanSub_2 = mean(Sub_metering_2),
            meanSub_3 = mean(Sub_metering_3),
            meanSub_4 = mean(Active_energy))

##Calculating the average per HOUR of all submeters
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
            meanSub_3 = mean(Sub_metering_3),
            meanSub_4 = mean(Active_energy))


##Subsets of day and week and their corresponding plots
## Subset average power consumption on 9th day of January 2008 
houseAvgDay <- filter(avghourALL, 
                      Year == 2008 & Month == 1 & Day == 9)

## Plot sub-meter 1, 2, 3 and Active Energy - using hourly average
plot_ly(houseAvgDay, x = ~houseAvgDay$Hour, y = ~houseAvgDay$meanSub_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~houseAvgDay$meanSub_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~houseAvgDay$meanSub_3, name = 'Water Heater & AC', mode = 'lines') %>%
  add_trace(y = ~houseAvgDay$meanSub_4, name = 'Global Active Power', mode = 'lines') %>%
  layout(title = "Average Power Consumption January 9th, 2008",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (Average watt-hours)"))

##Subset average power consumption on 3rd week of January 2008 ----- LOOK AT THIS AGAIN!!!!
houseAvgWeek <- filter(avgdayALL, 
                    Year == 2008 & Month == 1 & Week == 3)

## Plot sub-meter 1, 2, 3 and Active Energy - using daily average
plot_ly(houseAvgWeek, x = ~houseAvgWeek$Day, y = ~houseAvgWeek$meanSub_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~houseAvgWeek$meanSub_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~houseAvgWeek$meanSub_3, name = 'Water Heater & AC', mode = 'lines') %>%
  add_trace(y = ~houseAvgWeek$meanSub_4, name = 'Global Active Energy', mode = 'lines') %>%
  layout(title = "Average Power Consumption 3rd week January 2008",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))

## Subset average power consumption on 9th day of January 2008 
houseAvgDay <- filter(avghourALL, 
                      Year == 2008 & Month == 1 & Day == 9)

## Plot sub-meter 1, 2, 3 and Active Energy - using hourly average
plot_ly(houseAvgDay, x = ~houseAvgDay$Hour, y = ~houseAvgDay$meanSub_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~houseAvgDay$meanSub_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~houseAvgDay$meanSub_3, name = 'Water Heater & AC', mode = 'lines') %>%
  add_trace(y = ~houseAvgDay$meanSub_4, name = 'Global Active Power', mode = 'lines') %>%
  layout(title = "Average Power Consumption January 9th, 2008",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (Average watt-hours)"))

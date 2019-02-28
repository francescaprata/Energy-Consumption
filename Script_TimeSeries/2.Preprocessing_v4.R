##PROJECT:IoT Analytics Visualize and Analyze Energy Data
##NAME:Francesca Prata
##SCRIPT:Pre-processing and initial visualization 
##DATE:20-02-2019
##VERSION:4

##Calculating the average per week
avgweekALL <- Yrs2007_2010 %>%
  group_by(Year,
           Quarter,
           Month,
           Week,
           Weekdays) %>%
  summarise(meanSub_1 = mean(Sub_metering_1),
            meanSub_2 = mean(Sub_metering_2),
            meanSub_3 = mean(Sub_metering_3),
            meanSub_4 = mean(Active_energy))

##Calculating the average per day
#Yrs2007_2010$Weekdays <- as.ordered(Yrs2007_2010$Weekdays)
#Yrs2007_2010$Day <- as.ordered(Yrs2007_2010$Day)
avgdayALL <- Yrs2007_2010 %>%
  group_by(Year,
           Quarter,
           Month,
           Week,
           Day) %>%
  summarise(meanSub_1 = mean(Sub_metering_1),
            meanSub_2 = mean(Sub_metering_2),
            meanSub_3 = mean(Sub_metering_3),
            meanSub_4 = mean(Active_energy))

##Calculating the average per hour
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

##////////////////////////COMPARING A WINTER AND A SUMMER DAY/////////////////////##
## Subset average power consumption on 9th day of January 2008 
houseJan08AvgDay <- filter(avghourALL, 
                      Year == 2008 & Month == 1 & Day == 9)

## Plot sub-meter 1, 2, 3 and Active energy  
plot_ly(houseJan08AvgDay, x = ~houseJan08AvgDay$Hour, y = ~houseJan08AvgDay$meanSub_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~houseJan08AvgDay$meanSub_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~houseJan08AvgDay$meanSub_3, name = 'Water Heater & AC', mode = 'lines') %>%
  add_trace(y = ~houseJan08AvgDay$meanSub_4, name = 'Active Energy', mode = 'lines') %>%
  layout(title = "Average Power Consumption January 9th, 2008",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (Average watt-hours)"))

## Subset average power consumption on 9th day of July 2008 
houseJuly08AvgDay <- filter(avghourALL, 
                           Year == 2008 & Month == 7 & Day == 9)

## Plot sub-meter 1, 2, 3 and Active energy  
plot_ly(houseJuly08AvgDay, x = ~houseJuly08AvgDay$Hour, y = ~houseJuly08AvgDay$meanSub_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~houseJuly08AvgDay$meanSub_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~houseJuly08AvgDay$meanSub_3, name = 'Water Heater & AC', mode = 'lines') %>%
  add_trace(y = ~houseJuly08AvgDay$meanSub_4, name = 'Active Energy', mode = 'lines') %>%
  layout(title = "Average Power Consumption July 9th, 2008",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (Average watt-hours)"))

##////////////////COMPARING A WINTER AND A SUMMER WEEK//////////////////////##
##Subsetting and plotting 2nd week of February 2008 
houseWeekFebAVG <- filter(avgdayALL, 
                       Year == 2008 & Week == 6)

plot_ly(houseWeekFebAVG, x = ~houseWeekFebAVG$Day, y = ~houseWeekFebAVG$meanSub_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~houseWeekFebAVG$meanSub_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~houseWeekFebAVG$meanSub_3, name = 'Water Heater & AC', mode = 'lines') %>%
  add_trace(y = ~houseWeekFebAVG$meanSub_4, name = 'Active Energy', mode = 'lines') %>%
  layout(title = "Average Power Consumption week 4 February 2008",
         xaxis = list(title = "Day"),
         yaxis = list (title = "Power (average watt-hours)"))


#Subsetting and plotting 2nd week of August 2008
houseWeekAugAVG <- filter(avgdayALL, 
                    Year == 2008 & Week == 32)

plot_ly(houseWeekAugAVG, x = ~houseWeekAugAVG$Day, y = ~houseWeekAugAVG$meanSub_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~houseWeekAugAVG$meanSub_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~houseWeekAugAVG$meanSub_3, name = 'Water Heater & AC', mode = 'lines') %>%
  add_trace(y = ~houseWeekAugAVG$meanSub_4, name = 'Active Energy', mode = 'lines') %>%
  layout(title = "Average Power Consumption week 4 August 2008",
         xaxis = list(title = "Day"),
         yaxis = list (title = "Power (average watt-hours)"))

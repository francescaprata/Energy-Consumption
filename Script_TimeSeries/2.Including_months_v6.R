##PROJECT:IoT Analytics Visualize and Analyze Energy Data
##NAME:Francesca Prata
##SCRIPT:Pre-processing and initial visualization 
##DATE:24-02-2019
##VERSION:6

##////////////////CALCULATING AVERAGES////////////////////////##
##Calculating the average per year
avgyearALL <- Yrs2007_2010 %>%
  group_by(Year) %>%
  summarise(meanSub_1 = mean(Sub_metering_1),
            meanSub_2 = mean(Sub_metering_2),
            meanSub_3 = mean(Sub_metering_3),
            meanSub_4 = mean(Active_energy),
            meanGAP = mean(GAP))

##Calculating the average per month
avgmonthALL <- Yrs2007_2010 %>%
  group_by(Year,
           Quarter,
           Month) %>%
  summarise(meanSub_1 = mean(Sub_metering_1),
            meanSub_2 = mean(Sub_metering_2),
            meanSub_3 = mean(Sub_metering_3),
            meanSub_4 = mean(Active_energy),
            meanGAP = mean(GAP))

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
            meanSub_4 = mean(Active_energy),
            meanGAP = mean(GAP))

##Calculating the average per day
avgdayALL <- Yrs2007_2010 %>%
  group_by(Year,
           Quarter,
           Month,
           Week,
           Day) %>%
  summarise(meanSub_1 = mean(Sub_metering_1),
            meanSub_2 = mean(Sub_metering_2),
            meanSub_3 = mean(Sub_metering_3),
            meanSub_4 = mean(Active_energy),
            meanGAP = mean(GAP))

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
            meanSub_4 = mean(Active_energy),
            meanGAP = mean(GAP))

##////////////////CALCULATING TOTALS////////////////////////##
##Calculating the total per year
totalyearALL <- Yrs2007_2010 %>%
  group_by(Year) %>%
  summarise(totalSub_1 = sum(Sub_metering_1),
            totalSub_2 = sum(Sub_metering_2),
            totalSub_3 = sum(Sub_metering_3),
            totalSub_4 = sum(Active_energy),
            totalGAP = sum(GAP))

##Calculating the total per month
totalmonthALL <- Yrs2007_2010 %>%
  group_by(Year,
           Quarter,
           Month) %>%
  summarise(totalSub_1 = sum(Sub_metering_1),
            totalSub_2 = sum(Sub_metering_2),
            totalSub_3 = sum(Sub_metering_3),
            totalSub_4 = sum(Active_energy),
            totalGAP = sum(GAP))

##Calculating the total per week
totalweekALL <- Yrs2007_2010 %>%
  group_by(Year,
           Quarter,
           Month,
           Week,
           Weekdays) %>%
  summarise(totalSub_1 = sum(Sub_metering_1),
            totalSub_2 = sum(Sub_metering_2),
            totalSub_3 = sum(Sub_metering_3),
            totalSub_4 = sum(Active_energy),
            totalGAP = sum(GAP))

##Calculating the total per day
totaldayALL <- Yrs2007_2010 %>%
  group_by(Year,
           Quarter,
           Month,
           Week,
           Day) %>%
  summarise(totalSub_1 = sum(Sub_metering_1),
            totalSub_2 = sum(Sub_metering_2),
            totalSub_3 = sum(Sub_metering_3),
            totalSub_4 = sum(Active_energy),
            totalGAP = sum(GAP))

##Calculating the total per hour
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
            totalSub_3 = sum(Sub_metering_3),
            totalSub_4 = sum(Active_energy),
            totalGAP = sum(GAP))

##////////////////////////COMPARING A WINTER AND A SUMMER DAY/////////////////////##
## Subset average power consumption on 9th day of January 2008 
houseJan08AvgDay <- filter(avghourALL, 
                           Year == 2008 & Month == 1 & Day == 9)

## Plot sub-meter 1, 2, 3 and Active energy  
plot_ly(houseJan08AvgDay, x = ~houseJan08AvgDay$Hour, y = ~houseJan08AvgDay$meanSub_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~houseJan08AvgDay$meanSub_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~houseJan08AvgDay$meanSub_3, name = 'Water Heater & AC', mode = 'lines') %>%
  add_trace(y = ~houseJan08AvgDay$meanSub_4, name = 'Unknown', mode = 'lines') %>%
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
  add_trace(y = ~houseJuly08AvgDay$meanSub_4, name = 'Unknown', mode = 'lines') %>%
  layout(title = "Average Power Consumption July 9th, 2008",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (Average watt-hours)"))

##////////////////COMPARING A WINTER AND A SUMMER WEEK//////////////////////##
##Subsetting and plotting 4th week of February 2008 
houseWeekFebAVG <- filter(avgdayALL, 
                          Year == 2008 & Month == 2 & (Day == 18 | 
                                                      Day == 19 | 
                                                      Day == 20 | 
                                                      Day == 21 |
                                                      Day == 22 |
                                                      Day == 23 |
                                                      Day == 24))

plot_ly(houseWeekFebAVG, 
        x = ~houseWeekFebAVG$Day, 
        y = ~houseWeekFebAVG$meanSub_1, 
        name = 'Kitchen', 
        type = 'scatter', 
        mode = 'lines') %>%
  add_trace(y = ~houseWeekFebAVG$meanSub_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~houseWeekFebAVG$meanSub_3, name = 'Water Heater & AC', mode = 'lines') %>%
  layout(title = "Average Weekly Power Consumption Sub-meter 1 2007-2009",
         xaxis = list(title = "Days"),
         yaxis = list (title = "Power (Average watt-hours)"))


#Subsetting and plotting 2nd week of August 2008
houseWeekAugAVG <- filter(avgdayALL, 
                          Year == 2008 & Week == 32)

plot_ly(houseWeekAugAVG, x = ~houseWeekAugAVG$Day, y = ~houseWeekAugAVG$meanSub_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~houseWeekAugAVG$meanSub_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~houseWeekAugAVG$meanSub_3, name = 'Water Heater & AC', mode = 'lines') %>%
  add_trace(y = ~houseWeekAugAVG$meanSub_4, name = 'Active Energy', mode = 'lines') %>%
  add_trace(y = ~houseWeekAugAVG$meanGAP, name = 'Global Active Energy', mode = 'lines') %>%
  layout(title = "Average Power Consumption week 4 August 2008",
         xaxis = list(title = "Day"),
         yaxis = list (title = "Power (average watt-hours)"))

#Subsetting and plotting average per month //// CHECK THIS!!! 
houseMonthAVG <- filter(avgmonthALL, 
                       Month ==1)

plot_ly(houseMonthAVG, x = ~houseMonthAVG$Year, y = ~houseMonthAVG$meanSub_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~houseMonthAVG$meanSub_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~houseMonthAVG$meanSub_3, name = 'Water Heater & AC', mode = 'lines') %>%
  add_trace(y = ~houseMonthAVG$meanSub_4, name = 'Active Energy', mode = 'lines') %>%
  add_trace(y = ~houseMonthAVG$meanGAP, name = 'Global Active Energy', mode = 'lines') %>%
  layout(title = "Average Power Consumption per month",
         xaxis = list(title = "Year"),
         yaxis = list (title = "Power (average watt-hours)"))


##Plotting the yearly averages 
ggplot(avgyearALL, aes(x=Year, y="Average Watt per hour", group = 1)) +
         geom_line(aes(x=Year, y=meanSub_1), colour = "blue") +
         geom_line(aes(x=Year, y=meanSub_2), colour = "orange") +
         geom_line(aes(x=Year, y=meanSub_3), colour = "green") +
         geom_line(aes(x=Year, y=meanSub_4), colour = "red") +
         geom_line(aes(x=Year, y=meanGAP), colour = "purple") + 
         labs(title="Yearly average",x="Years", y = "Average watts per hour") +
  theme_classic()

##Only for submeters
ggplot(avgyearALL, aes(x=Year, y="Average Watt per hour", group = 1)) +
  geom_line(aes(x=Year, y=meanSub_1), colour = "blue") +
  geom_line(aes(x=Year, y=meanSub_2), colour = "orange") +
  geom_line(aes(x=Year, y=meanSub_3), colour = "green") +
  labs(title="Yearly average",x="Years", y = "Average watts per hour") +
  theme_classic()

##Only submeter 1
ggplot(avgyearALL, aes(x=Year, y="Average Watt per hour", group = 1)) +
  geom_line(aes(x=Year, y=meanSub_1), colour = "blue") +
  labs(title="Yearly average",x="Years", y = "Average watts per hour") +
  theme_classic()

##Only submeter 2

ggplot(avgyearALL, aes(x=Year, y="Average Watt per hour", group = 1)) +
  geom_line(aes(x=Year, y=meanSub_2), colour = "orange") +
  labs(title="Yearly average",x="Years", y = "Average watts per hour") +
  theme_classic()

##Only submeter 3
##Only for submeters
ggplot(avgyearALL, aes(x=Year, y="Average Watt per hour", group = 1)) +
  geom_line(aes(x=Year, y=meanSub_3), colour = "green") +
  labs(title="Yearly average",x="Years", y = "Average watts per hour") +
  theme_classic()

##Only global energy
ggplot(avgyearALL, aes(x=Year, y="Average Watt per hour", group = 1)) +
  geom_line(aes(x=Year, y=meanSub_4), colour = "red") +
  labs(title="Yearly average global energy", y = "Average watts per hour") +
  theme_classic()

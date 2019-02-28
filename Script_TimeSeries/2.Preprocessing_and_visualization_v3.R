##PROJECT:IoT Analytics Visualize and Analyze Energy Data
##NAME:Francesca Prata
##SCRIPT:Pre-processing and initial visualization 
##DATE:20-02-2019
##VERSION:3

##Calculating the average per day
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

##//////////////////////// TIMES OF DAY //////////////////////////##
##Creating subsets for different day times
Morning <- subset(avghourALL, 
                  Hour == 6:11)
Afternoon <- subset(avghourALL, 
                    Hour == 12:17)
Evening <- subset(avghourALL, 
                  Hour == 18:23)
Night <- subset(avghourALL, 
                Hour == 0:5)


##Subsets of day and week and their corresponding plots
## Subset average power consumption on 9th day of January 2008 
houseAvgDay <- filter(avghourALL, 
                      Year == 2008 & Month == 1 & Day == 9)

## Plot sub-meter 1, 2 and 3 with title, legend and labels - All observations 
plot_ly(houseDay, x = ~houseDay10$Hour, y = ~houseDay$totalSub_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~houseDay$totalSub_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~houseDay$totalSub_3, name = 'Water Heater & AC', mode = 'lines') %>%
  add_trace(y = ~houseDay$totalSub_4, name = 'Active Energy', mode = 'lines') %>%
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

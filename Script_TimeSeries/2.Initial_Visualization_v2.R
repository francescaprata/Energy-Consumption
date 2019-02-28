##PROJECT:IoT Analytics Visualize and Analyze Energy Data
##NAME:Francesca Prata
##SCRIPT:Initial visualization 
##DATE:18-02-2019
##VERSION:2

## Subset the 9th day of January 2008 - 10 min frequency
houseDay10 <- filter(Yrs2007_2010, 
                     Year == 2008 & Month == 1 & Day == 9 & (Minute == 0 | 
                                                               Minute == 10 | 
                                                               Minute == 20 |
                                                               Minute == 30 |
                                                               Minute == 40 |
                                                               Minute == 50))

## Plot sub-meter 1, 2 and 3 with title, legend and labels - All observations 
plot_ly(houseDay10, x = ~houseDay10$DateTime, y = ~houseDay10$Sub_metering_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~houseDay10$Sub_metering_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~houseDay10$Sub_metering_3, name = 'Water Heater & AC', mode = 'lines') %>%
  layout(title = "Power Consumption January 9th, 2008",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))

##Plotting 3rd week of Jan 2008 visualization - Reducing granularity (1 hour frequency)
houseWeek10 <- filter(Yrs2007_2010, 
                      Year == 2008 & Month == 1 & Week == 3 & (Hour == 0 | 
                                                                 Hour == 1 |
                                                                 Hour == 2 |
                                                                 Hour == 3 | 
                                                                 Hour == 4 | 
                                                                 Hour == 5 |
                                                                 Hour == 6 |
                                                                 Hour == 7 |
                                                                 Hour == 8 |
                                                                 Hour == 9 |
                                                                 Hour == 10 | 
                                                                 Hour == 11 | 
                                                                 Hour == 12 |
                                                                 Hour == 13 |
                                                                 Hour == 14 |
                                                                 Hour == 15 | 
                                                                 Hour == 16 | 
                                                                 Hour == 17 |
                                                                 Hour == 18 |
                                                                 Hour == 19 | 
                                                                 Hour == 20 |
                                                                 Hour == 21 |
                                                                 Hour == 22 |
                                                                 Hour == 23))
plot_ly(houseWeek10, x = ~houseWeek10$DateTime, y = ~houseWeek10$Sub_metering_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~houseWeek10$Sub_metering_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~houseWeek10$Sub_metering_3, name = 'Water Heater & AC', mode = 'lines') %>%
  layout(title = "Power Consumption 3rd week January 2008",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))

##Plotting September 2009 visualization - Reducing granularity (2 hour frequency)
houseMonthSep <- filter(Yrs2007_2010, 
                       Year == 2009 & Month == 9 & (Hour == 0 | 
                                                    Hour == 2 |
                                                    Hour == 4 | 
                                                    Hour == 6 |
                                                    Hour == 8 |
                                                    Hour == 10 | 
                                                    Hour == 12 |
                                                    Hour == 14 |
                                                    Hour == 16 | 
                                                    Hour == 18 |
                                                    Hour == 20 |
                                                    Hour == 22 ))
plot_ly(houseWeekSep, x = ~houseWeekSep$DateTime, y = ~houseWeekSep$Sub_metering_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~houseWeekSep$Sub_metering_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~houseWeekSep$Sub_metering_3, name = 'Water Heater & AC', mode = 'lines') %>%
  layout(title = "Power Consumption September 2009",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))


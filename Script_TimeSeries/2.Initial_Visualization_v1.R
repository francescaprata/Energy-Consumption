##PROJECT:IoT Analytics Visualize and Analyze Energy Data
##NAME:Francesca Prata
##SCRIPT:Initial visualization 
##DATE:18-02-2019
##VERSION:1

library(plotly)

##Plotting day visualization - Reducing granularity (10 min frequency)
houseDay10 <- filter(Yrs2007_2010, 
                     Year == 2008 & Month == 1 & Day == 9 & (Minute == 0 | 
                                                               Minute == 10 | 
                                                               Minute == 20 | 
                                                               Minute == 30 | 
                                                               Minute == 40 | 
                                                               Minute == 50))

plot_ly(houseDay10, x = ~houseDay10$DateTime, y = ~houseDay10$Sub_metering_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~houseDay10$Sub_metering_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~houseDay10$Sub_metering_3, name = 'Water Heater & AC', mode = 'lines') %>%
  layout(title = "Power Consumption January 9th, 2008",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))

##Plotting week visualization - Reducing granularity (10 min frequency)
houseWeek10 <- filter(Yrs2007_2010, 
                     Year == 2008 & Month == 1 & Week == 3 & (Minute == 0 |
                                                                Minute == 10 |
                                                                Minute == 20 |
                                                                Minute == 30 | 
                                                                Minute == 40 | 
                                                                Minute == 50))

plot_ly(houseWeek10, x = ~houseWeek10$DateTime, y = ~houseWeek10$Sub_metering_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~houseWeek10$Sub_metering_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~houseWeek10$Sub_metering_3, name = 'Water Heater & AC', mode = 'lines') %>%
  layout(title = "Power Consumption 3rd week January 2008",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))

##Plotting hour visualization - Reducing granularity 
houseHour <- filter(Yrs2007_2010, 
                     year == 2008 & month == 1 & day == 9)

plot_ly(houseHour, x = ~houseHour$DateTime, y = ~houseHour$Sub_metering_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~houseHour$Sub_metering_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~houseHour$Sub_metering_3, name = 'Water Heater & AC', mode = 'lines') %>%
  layout(title = " Hourly Power Consumption 9 January 2008",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))


##PROJECT:IoT Analytics Domain Research and Exploratory Data Analysis 
##NAME:Francesca Prata
##SCRIPT:Data visualization
##DATE:14-02-2019
##VERSION:4

#///////////////////////COMPARISON SUBMETERS PER YEAR///////////////////////#
##Year 2007
plot_ly(Y2007, x = ~Y2007$DateTime, y = ~Y2007$Sub_metering_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~Y2007$Sub_metering_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~Y2007$Sub_metering_3, name = 'Water Heater & AC', mode = 'lines') %>%
  layout(title = "Power Consumption 2007",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))

##One month frequency
YearlyxMonth <- filter(yrs_2007to2009, 
                     year == 2007 & (month == 1 | month == 2 | month == 3 | 
                                       month == 4 | month == 5 | month == 6 | month == 7 | 
                                       month == 8 | month == 9 | month == 10 | month == 11 | month == 12 ))

plot_ly(YearlyxMonth, x = ~YearlyxMonth$DateTime, y = ~YearlyxMonth$Sub_metering_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~YearlyxMonth$Sub_metering_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~YearlyxMonth$Sub_metering_3, name = 'Water Heater & AC', mode = 'lines') %>%
  layout(title = "Power Consumption 2007 per month",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))

##Year 2008
plot_ly(Y2008, x = ~Y2008$DateTime, y = ~Y2008$Sub_metering_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~Y2008$Sub_metering_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~Y2008$Sub_metering_3, name = 'Water Heater & AC', mode = 'lines') %>%
  layout(title = "Power Consumption 2008",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))

##Year 2009
plot_ly(Y2009, x = ~Y2009$DateTime, y = ~Y2009$Sub_metering_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~Y2009$Sub_metering_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~Y2009$Sub_metering_3, name = 'Water Heater & AC', mode = 'lines') %>%
  layout(title = "Power Consumption 2009",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))



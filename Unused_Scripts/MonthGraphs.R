##PROJECT:IoT Analytics Domain Research and Exploratory Data Analysis 
##NAME:Francesca Prata
##SCRIPT:Data visualization per month 
##DATE:13-02-2019
##VERSION:1

##creation of monthly subsets
Jan2007 <- subset(Y2007,
                  month == 1)
Feb2007 <- subset(Y2007,
                  month == 2)
March2007 <- subset(Y2007,
                    month == 3)
April2007 <- subset(Y2007,
                    month == 4)
May2007 <- subset(Y2007,
                  month == 5)
June2007 <- subset(Y2007,
                   month == 6)
July2007 <- subset(Y2007,
                   month == 7)
Aug2007 <- subset(Y2007,
                  month == 8)
Sep2007 <- subset(Y2007,
                  month == 9)
Oct2007 <- subset(Y2007,
                  month == 10)
Nov2007 <- subset(Y2007,
                  month == 11)
Dec2007 <- subset(Y2007,
                  month == 12)

Jan2008 <- subset(Y2008,
                  month == 1)
Feb2008 <- subset(Y2008,
                  month == 2)
March2008 <- subset(Y2008,
                    month == 3)
April2008 <- subset(Y2008,
                    month == 4)
May2008 <- subset(Y2008,
                  month == 5)
June2008 <- subset(Y2008,
                   month == 6)
July2008 <- subset(Y2008,
                   month == 7)
Aug2008 <- subset(Y2008,
                  month == 8)
Sep2008 <- subset(Y2008,
                  month == 9)
Oct2008 <- subset(Y2008,
                  month == 10)
Nov2008 <- subset(Y2008,
                  month == 11)
Dec2008 <- subset(Y2008,
                  month == 12)

Jan2009 <- subset(Y2009,
                  month == 1)
Feb2009 <- subset(Y2009,
                  month == 2)
March2009 <- subset(Y2009,
                    month == 3)
April2009 <- subset(Y2009,
                    month == 4)
May2009 <- subset(Y2009,
                  month == 5)
June2009 <- subset(Y2009,
                   month == 6)
July2009 <- subset(Y2009,
                   month == 7)
Aug2009 <- subset(Y2009,
                  month == 8)
Sep2009 <- subset(Y2009,
                  month == 9)
Oct2009 <- subset(Y2009,
                  month == 10)
Nov2009 <- subset(Y2009,
                  month == 11)
Dec2009 <- subset(Y2009,
                  month == 12)

##The plots

#//// January 2007-2009
plot_ly(Jan2007, x = ~Jan2007$DateTime, y = ~Jan2007$Sub_metering_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~Jan2007$Sub_metering_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~Jan2007$Sub_metering_3, name = 'Water Heater & AC', mode = 'lines') %>%
  layout(title = "Power Consumption January 2007",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))

plot_ly(Jan2008, x = ~Jan2008$DateTime, y = ~Jan2008$Sub_metering_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~Jan2008$Sub_metering_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~Jan2008$Sub_metering_3, name = 'Water Heater & AC', mode = 'lines') %>%
  layout(title = "Power Consumption January 2008",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))

plot_ly(Jan2009, x = ~Jan2009$DateTime, y = ~Jan2009$Sub_metering_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~Jan2009$Sub_metering_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~Jan2009$Sub_metering_3, name = 'Water Heater & AC', mode = 'lines') %>%
  layout(title = "Power Consumption January 2009",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))

#//// February 2007-2009
plot_ly(Feb2007, x = ~Feb2007$DateTime, y = ~Feb2007$Sub_metering_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~Feb2007$Sub_metering_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~Feb2007$Sub_metering_3, name = 'Water Heater & AC', mode = 'lines') %>%
  layout(title = "Power Consumption February 2007",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))

plot_ly(Feb2008, x = ~Feb2008$DateTime, y = ~Feb2008$Sub_metering_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~Feb2008$Sub_metering_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~Feb2008$Sub_metering_3, name = 'Water Heater & AC', mode = 'lines') %>%
  layout(title = "Power Consumption January 2008",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))

plot_ly(Feb2009, x = ~Feb2009$DateTime, y = ~Feb2009$Sub_metering_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~Feb2009$Sub_metering_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~Feb2009$Sub_metering_3, name = 'Water Heater & AC', mode = 'lines') %>%
  layout(title = "Power Consumption January 2009",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))

#//// March 2007-2009
plot_ly(March2007, x = ~March2007$DateTime, y = ~March2007$Sub_metering_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~March2007$Sub_metering_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~March2007$Sub_metering_3, name = 'Water Heater & AC', mode = 'lines') %>%
  layout(title = "Power Consumption March 2007",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))

plot_ly(March2008, x = ~March2008$DateTime, y = ~March2008$Sub_metering_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~March2008$Sub_metering_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~March2008$Sub_metering_3, name = 'Water Heater & AC', mode = 'lines') %>%
  layout(title = "Power Consumption March 2008",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))

plot_ly(March2009, x = ~March2009$DateTime, y = ~March2009$Sub_metering_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~March2009$Sub_metering_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~March2009$Sub_metering_3, name = 'Water Heater & AC', mode = 'lines') %>%
  layout(title = "Power Consumption March 2009",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))

#//// April 2007-2009
plot_ly(April2007, x = ~April2007$DateTime, y = ~April2007$Sub_metering_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~April2007$Sub_metering_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~April2007$Sub_metering_3, name = 'Water Heater & AC', mode = 'lines') %>%
  layout(title = "Power Consumption April 2007",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))

plot_ly(April2008, x = ~April2008$DateTime, y = ~April2008$Sub_metering_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~April2008$Sub_metering_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~April2008$Sub_metering_3, name = 'Water Heater & AC', mode = 'lines') %>%
  layout(title = "Power Consumption April 2008",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))

plot_ly(April2009, x = ~April2009$DateTime, y = ~April2009$Sub_metering_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~April2009$Sub_metering_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~April2009$Sub_metering_3, name = 'Water Heater & AC', mode = 'lines') %>%
  layout(title = "Power Consumption April 2009",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))

#//// May 2007-2009
plot_ly(May2007, x = ~May2007$DateTime, y = ~May2007$Sub_metering_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~May2007$Sub_metering_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~May2007$Sub_metering_3, name = 'Water Heater & AC', mode = 'lines') %>%
  layout(title = "Power Consumption May 2007",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))

plot_ly(May2008, x = ~May2008$DateTime, y = ~May2008$Sub_metering_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~May2008$Sub_metering_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~May2008$Sub_metering_3, name = 'Water Heater & AC', mode = 'lines') %>%
  layout(title = "Power Consumption May 2008",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))

plot_ly(May2009, x = ~May2009$DateTime, y = ~May2009$Sub_metering_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~May2009$Sub_metering_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~May2009$Sub_metering_3, name = 'Water Heater & AC', mode = 'lines') %>%
  layout(title = "Power Consumption May 2009",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))

#//// June 2007-2009
plot_ly(June2007, x = ~June2007$DateTime, y = ~June2007$Sub_metering_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~June2007$Sub_metering_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~June2007$Sub_metering_3, name = 'Water Heater & AC', mode = 'lines') %>%
  layout(title = "Power Consumption June 2007",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))

plot_ly(June2008, x = ~June2008$DateTime, y = ~June2008$Sub_metering_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~June2008$Sub_metering_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~June2008$Sub_metering_3, name = 'Water Heater & AC', mode = 'lines') %>%
  layout(title = "Power Consumption June 2008",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))

plot_ly(June2009, x = ~June2009$DateTime, y = ~June2009$Sub_metering_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~June2009$Sub_metering_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~June2009$Sub_metering_3, name = 'Water Heater & AC', mode = 'lines') %>%
  layout(title = "Power Consumption June 2009",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))

#//// July 2007-2009
plot_ly(Jan2007, x = ~July2007$DateTime, y = ~July2007$Sub_metering_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~July2007$Sub_metering_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~July2007$Sub_metering_3, name = 'Water Heater & AC', mode = 'lines') %>%
  layout(title = "Power Consumption July 2007",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))

plot_ly(July2008, x = ~July2008$DateTime, y = ~July2008$Sub_metering_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~July2008$Sub_metering_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~July2008$Sub_metering_3, name = 'Water Heater & AC', mode = 'lines') %>%
  layout(title = "Power Consumption July 2008",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))

plot_ly(July2009, x = ~July2009$DateTime, y = ~July2009$Sub_metering_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~July2009$Sub_metering_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~July2009$Sub_metering_3, name = 'Water Heater & AC', mode = 'lines') %>%
  layout(title = "Power Consumption July 2009",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))

#//// August 2007-2009
plot_ly(Aug2007, x = ~Aug2007$DateTime, y = ~Aug2007$Sub_metering_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~Aug2007$Sub_metering_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~Aug2007$Sub_metering_3, name = 'Water Heater & AC', mode = 'lines') %>%
  layout(title = "Power Consumption August 2007",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))

plot_ly(Aug2008, x = ~Aug2008$DateTime, y = ~Aug2008$Sub_metering_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~Aug2008$Sub_metering_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~Aug2008$Sub_metering_3, name = 'Water Heater & AC', mode = 'lines') %>%
  layout(title = "Power Consumption August 2008",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))

plot_ly(Aug2009, x = ~Aug2009$DateTime, y = ~Aug2009$Sub_metering_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~Aug2009$Sub_metering_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~Aug2009$Sub_metering_3, name = 'Water Heater & AC', mode = 'lines') %>%
  layout(title = "Power Consumption August 2009",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))

#//// September 2007-2009
plot_ly(Sep2007, x = ~Sep2007$DateTime, y = ~Sep2007$Sub_metering_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~Sep2007$Sub_metering_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~Sep2007$Sub_metering_3, name = 'Water Heater & AC', mode = 'lines') %>%
  layout(title = "Power Consumption September 2007",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))

plot_ly(Sep2008, x = ~Sep2008$DateTime, y = ~Sep2008$Sub_metering_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~Sep2008$Sub_metering_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~Sep2008$Sub_metering_3, name = 'Water Heater & AC', mode = 'lines') %>%
  layout(title = "Power Consumption September 2008",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))

plot_ly(Sep2009, x = ~July2009$DateTime, y = ~Sep2009$Sub_metering_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~Sep2009$Sub_metering_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~Sep2009$Sub_metering_3, name = 'Water Heater & AC', mode = 'lines') %>%
  layout(title = "Power Consumption September 2009",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))

#//// October 2007-2009
plot_ly(Oct2007, x = ~Oct2007$DateTime, y = ~Oct2007$Sub_metering_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~Oct2007$Sub_metering_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~Oct2007$Sub_metering_3, name = 'Water Heater & AC', mode = 'lines') %>%
  layout(title = "Power Consumption October 2007",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))

plot_ly(Oct2008, x = ~Oct2008$DateTime, y = ~Oct2008$Sub_metering_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~Oct2008$Sub_metering_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~Oct2008$Sub_metering_3, name = 'Water Heater & AC', mode = 'lines') %>%
  layout(title = "Power Consumption October 2008",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))

plot_ly(Oct2009, x = ~Oct2009$DateTime, y = ~Oct2009$Sub_metering_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~Oct2009$Sub_metering_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~Oct2009$Sub_metering_3, name = 'Water Heater & AC', mode = 'lines') %>%
  layout(title = "Power Consumption Ocotber 2009",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))

#//// November 2007-2009
plot_ly(Nov2007, x = ~July2007$DateTime, y = ~Nov2007$Sub_metering_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~Nov2007$Sub_metering_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~Nov2007$Sub_metering_3, name = 'Water Heater & AC', mode = 'lines') %>%
  layout(title = "Power Consumption November 2007",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))

plot_ly(Nov2008, x = ~Nov2008$DateTime, y = ~Nov2008$Sub_metering_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~Nov2008$Sub_metering_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~Nov2008$Sub_metering_3, name = 'Water Heater & AC', mode = 'lines') %>%
  layout(title = "Power Consumption November 2008",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))

plot_ly(Nov2009, x = ~Nov2009$DateTime, y = ~Nov2009$Sub_metering_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~Nov2009$Sub_metering_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~Nov2009$Sub_metering_3, name = 'Water Heater & AC', mode = 'lines') %>%
  layout(title = "Power Consumption November 2009",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))

#//// December 2007-2009
plot_ly(Dec2007, x = ~Dec2007$DateTime, y = ~Dec2007$Sub_metering_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~Dec2007$Sub_metering_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~Dec2007$Sub_metering_3, name = 'Water Heater & AC', mode = 'lines') %>%
  layout(title = "Power Consumption December 2007",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))

plot_ly(Dec2008, x = ~Dec2008$DateTime, y = ~Dec2008$Sub_metering_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~Dec2008$Sub_metering_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~Dec2008$Sub_metering_3, name = 'Water Heater & AC', mode = 'lines') %>%
  layout(title = "Power Consumption December 2008",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))

plot_ly(Dec2009, x = ~Dec2009$DateTime, y = ~Dec2009$Sub_metering_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~Dec2009$Sub_metering_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~Dec2009$Sub_metering_3, name = 'Water Heater & AC', mode = 'lines') %>%
  layout(title = "Power Consumption December 2009",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))







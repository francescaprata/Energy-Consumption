###########################################################
# PROJECT:IoT Analytics Visualize and Analyze Energy Data #
# NAME:Francesca Prata                                    #
# SCRIPT:Data visualization                               #
# DATE:26-02-2019                                         #      
# VERSION:1                                               #
###########################################################

#################
#Yearly patterns#
#################

#Sub-meter 1
plot_ly(avgyearALL, 
        x = ~avgyearALL$Year, 
        y = ~avgyearALL$meanSub_1, 
        name = 'Kitchen', 
        type = 'scatter', 
        mode = 'lines',
        line = list(color = 'rgb(12, 105, 205)', width = 2)) %>%
  layout(title = "Average Yearly Power Consumption Sub-meter 1",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (Average watt-hours)"))

#Sub-meter 2
plot_ly(avgyearALL, 
        x = ~avgyearALL$Year, 
        y = ~avgyearALL$meanSub_2, 
        name = 'Laundry Room', 
        type = 'scatter', 
        mode = 'lines',
        line = list(color = 'rgb(242, 163, 4)', width = 2))%>%
  layout(title = "Average Yearly Power Consumption Sub-meter 2",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (Average watt-hours)"))

#Sub-meter 3
plot_ly(avgyearALL, 
        x = ~avgyearALL$Year, 
        y = ~avgyearALL$meanSub_3, 
        name = 'Water Heater & AC', 
        type = 'scatter', 
        mode = 'lines',
        line = list(color = 'rgb(3, 241, 99)', width = 2)) %>%
  layout(title = "Average Yearly Power Consumption Sub-meter 3",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (Average watt-hours)"))

#Unknown 
plot_ly(avgyearALL, 
        x = ~avgyearALL$Year, 
        y = ~avgyearALL$meanSub_4, 
        name = 'Unknown', 
        type = 'scatter', 
        mode = 'lines',
        line = list(color = 'rgb(239, 19, 177)', width = 2))%>%
  layout(title = "Average Yearly Power Consumption Unknown",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (Average watt-hours)"))

#Global active power
plot_ly(avgyearALL, 
        x = ~avgyearALL$Year, 
        y = ~avgyearALL$meanGAP, 
        name = 'GAP', 
        type = 'scatter', 
        mode = 'lines',
        line = list(color = 'rgb(201, 2, 240)', width = 2)) %>%
  layout(title = "Average Yearly Power Consumption",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (Average watt-hours)"))

#################
#Montly patterns#
#################

#Sub-meter 1
plot_ly(avgmonth2007, 
        x = ~avgmonth2007$Month, 
        y = ~avgmonth2007$meanSub_1, 
        name = '2007', 
        type = 'scatter', 
        mode = 'lines',
        line = list(width = 2))%>%
  add_trace(y = ~avgmonth2008$meanSub_1, name = '2008', mode = 'lines') %>%
  add_trace(y = ~avgmonth2009$meanSub_1, name = '2009', mode = 'lines') %>%
  layout(title = "Average Monthly Power Consumption Sub-meter 1 2007-2009",
         xaxis = list(title = "Months", range = c(1,12)),
         yaxis = list (title = "Power (Average watt-hours)"))

#Sub-meter 2
plot_ly(avgmonth2007, 
        x = ~avgmonth2007$Month, 
        y = ~avgmonth2007$meanSub_2, 
        name = '2007', 
        type = 'scatter', 
        mode = 'lines',
        line = list(width = 2))%>%
  add_trace(y = ~avgmonth2008$meanSub_2, name = '2008', mode = 'lines') %>%
  add_trace(y = ~avgmonth2009$meanSub_2, name = '2009', mode = 'lines') %>%
  layout(title = "Average Monthly Power Consumption Sub-meter 2 2007-2009",
         xaxis = list(title = "Months", range = c(1,12)),
         yaxis = list (title = "Power (Average watt-hours)"))

#Sub-meter 3
plot_ly(avgmonth2007, 
        x = ~avgmonth2007$Month, 
        y = ~avgmonth2007$meanSub_3, 
        name = '2007', 
        type = 'scatter', 
        mode = 'lines',
        line = list(width = 2))%>%
  add_trace(y = ~avgmonth2008$meanSub_3, name = '2008', mode = 'lines') %>%
  add_trace(y = ~avgmonth2009$meanSub_3, name = '2009', mode = 'lines') %>%
  layout(title = "Average Monthly Power Consumption Sub-meter 3 2007-2009",
         xaxis = list(title = "Months", range = c(1,12)),
         yaxis = list (title = "Power (Average watt-hours)"))

#Unknown
plot_ly(avgmonth2007, 
        x = ~avgmonth2007$Month, 
        y = ~avgmonth2007$meanSub_4, 
        name = '2007', 
        type = 'scatter', 
        mode = 'lines',
        line = list(width = 2))%>%
  add_trace(y = ~avgmonth2008$meanSub_4, name = '2008', mode = 'lines') %>%
  add_trace(y = ~avgmonth2009$meanSub_4, name = '2009', mode = 'lines') %>%
  layout(title = "Average Monthly Power Consumption Unknown 2007-2009",
         xaxis = list(title = "Months", range = c(1,12)),
         yaxis = list (title = "Power (Average watt-hours)"))

#################
#Weekly patterns#
#################

#Subsetting a week and finding the daily means
houseWeek <- filter(Yrs2007_2010,
                    Year == 2007 & Week == 16) %>%
  group_by(Year, 
           Month,
           Week,
           Weekdays) %>%
  summarise(meanSub_1 = mean(Sub_metering_1),
            meanSub_2 = mean(Sub_metering_2),
            meanSub_3 = mean(Sub_metering_3))

#Ordering the data by order of week days
table <- data.frame(weekdays = c("Monday", 
                                 "Tuesday", 
                                 "Wednesday", 
                                 "Thursday", 
                                 "Friday", 
                                 "Saturday", 
                                 "Sunday"),
                    meansub1 = c(0.3055556, 
                                 1.4194444,
                                 1.0965278,
                                 0.5090278,
                                 0.3652778,
                                 4.7395833,
                                 3.1645833),
                    meansub2 = c(1.1666667, 
                                 0.2638889, 
                                 0.2541667,
                                 1.1138889,
                                 0.2409722,
                                 0.3243056,
                                 1.5805556),
                    meansub3 = c(3.427083, 
                                 4.164583, 
                                 2.988889,
                                 3.991667,
                                 2.429861,
                                 6.898611,
                                 8.095139))

table$weekdays <- factor(table$weekdays, 
                         levels = c("Monday", 
                                    "Tuesday", 
                                    "Wednesday", 
                                    "Thursday", 
                                    "Friday", 
                                    "Saturday", 
                                    "Sunday"))

#Plotting the data
plot_ly(data=table, 
        x = ~weekdays, 
        y = ~meansub1, 
        name = "Kitchen", 
        type = "scatter", 
        mode = "lines") %>%
  add_trace(y = table$meansub2, name = "Laundry Room", mode = "lines") %>%
  add_trace(y = table$meansub3, name = "Water Heater & AC", mode = "lines") %>%
  layout(title = "Weekly average power consumption",
         xaxis = list(title = "Week days"),
         yaxis = list(title = "Power(watt-hours)"))

################
#Daily patterns#
################

#Subset 1st day of March 2008 
houseDay <- filter(Yrs2007_2010, 
                   Year == 2008 & Month == 3 & Day == 1 & (Minute == 0 | 
                                                           Minute == 10 | 
                                                           Minute == 20 | 
                                                           Minute == 30 | 
                                                           Minute == 40 | 
                                                           Minute == 50))

##Plotting power consumption for sub-meters 1, 2, 3 and active energy (unknown) 
plot_ly(houseDay, 
        x = ~houseDay$DateTime, 
        y = ~houseDay$Sub_metering_1, 
        name = 'Kitchen', type = 'scatter', mode = 'lines',
        line = list(color = 'rgb(12, 105, 205)', width = 2)) %>%
  add_trace(y = ~houseDay$Sub_metering_2, 
            name = 'Laundry Room', mode = 'lines',
            line = list(color = 'rgb(242, 163, 4)', width = 2)) %>%
  add_trace(y = ~houseDay$Sub_metering_3, 
            name = 'Water Heater & AC', mode = 'lines',
            line = list(color = 'rgb(3, 241, 99)', width = 2)) %>%
  add_trace(y = ~houseDay$Active_energy, 
            name = 'Unknown',  mode = 'lines',
            line = list(color = 'rgb(239, 19, 177)', width = 2)) %>%
  layout(title = "Power Consumption 1st March, 2008",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))
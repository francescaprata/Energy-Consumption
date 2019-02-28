##////////////////SUBSETS PER TIME OF DAY////////////////////////##
Morning <- subset(Yrs2007_2010, 
                  Hour == 6:11)
Afternoon <- subset(Yrs2007_2010, 
                    Hour == 12:17)
Evening <- subset(Yrs2007_2010, 
                  Hour == 18:23)
Night <- subset(Yrs2007_2010, 
                Hour == 0:5)

##////////////////AVERAGES PER TIME OF DAY////////////////////////##
##Morning
avgMorning <- Morning %>%
  group_by(Year) %>%
  summarise(meanSub_1 = mean(Sub_metering_1),
            meanSub_2 = mean(Sub_metering_2),
            meanSub_3 = mean(Sub_metering_3),
            meanSub_4 = mean(Global_active_power),
            meanGAP = mean(GAP)) 

#Afternoon
avgAfternoon <- Afternoon %>%
  group_by(Year) %>%
  summarise(meanSub_1 = mean(Sub_metering_1),
            meanSub_2 = mean(Sub_metering_2),
            meanSub_3 = mean(Sub_metering_3),
            meanSub_4 = mean(Global_active_power),
            meanGAP = mean(GAP)) 

#Evening
avgEvening <- Evening %>%
  group_by(Year) %>%
  summarise(meanSub_1 = mean(Sub_metering_1),
            meanSub_2 = mean(Sub_metering_2),
            meanSub_3 = mean(Sub_metering_3),
            meanSub_4 = mean(Global_active_power),
            meanGAP = mean(GAP)) 

#Night
avgNight <- Night %>%
  group_by(Year) %>%
  summarise(meanSub_1 = mean(Sub_metering_1),
            meanSub_2 = mean(Sub_metering_2),
            meanSub_3 = mean(Sub_metering_3),
            meanSub_4 = mean(Global_active_power),
            meanGAP = mean(GAP)) 

##////////////////PLOTTING AVERAGES////////////////////////##
##Plotting Mornings 2007-2010 
plot_ly(avgMorning, 
        x = ~avgMorning$Year, 
        y = ~avgMorning$meanSub_1, 
        name = 'Kitchen', 
        type = 'scatter', 
        mode = 'lines') %>%
  add_trace(y = ~avgMorning$meanSub_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~avgMorning$meanSub_3, name = 'Water Heater & AC', mode = 'lines') %>%
  layout(title = "Average Morning Power Consumption",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (Average watt-hours)"))

##Plotting Afternoons 2007-2010 
plot_ly(avgAfternoon, 
        x = ~avgAfternoon$Year, 
        y = ~avgAfternoon$meanSub_1, 
        name = 'Kitchen', 
        type = 'scatter', 
        mode = 'lines') %>%
  add_trace(y = ~avgAfternoon$meanSub_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~avgAfternoon$meanSub_3, name = 'Water Heater & AC', mode = 'lines') %>%
  layout(title = "Average Afternoon Power Consumption",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (Average watt-hours)"))

##Plotting Evenings 2007-2010 
plot_ly(avgEvening, 
        x = ~avgEvening$Year, 
        y = ~avgEvening$meanSub_1, 
        name = 'Kitchen', 
        type = 'scatter', 
        mode = 'lines') %>%
  add_trace(y = ~avgEvening$meanSub_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~avgEvening$meanSub_3, name = 'Water Heater & AC', mode = 'lines') %>%
  layout(title = "Average Evening Power Consumption",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (Average watt-hours)"))

##Plotting Nights 2007-2010 
plot_ly(avgNight, 
        x = ~avgNight$Year, 
        y = ~avgNight$meanSub_1, 
        name = 'Kitchen', 
        type = 'scatter', 
        mode = 'lines') %>%
  add_trace(y = ~avgNight$meanSub_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~avgNight$meanSub_3, name = 'Water Heater & AC', mode = 'lines') %>%
  layout(title = "Average Night Power Consumption",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (Average watt-hours)"))
    
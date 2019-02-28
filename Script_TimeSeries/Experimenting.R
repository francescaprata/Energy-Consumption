##////////////////WEEKLY PATTERNS////////////////////////##
houseWeek <- filter(Yrs2007_2010,
                    Year == 2007 & Week == 16) %>%
  group_by(Year, 
           Month,
           Week,
           Weekdays) %>%
  summarise(meanSub_1 = mean(Sub_metering_1),
            meanSub_2 = mean(Sub_metering_2),
            meanSub_3 = mean(Sub_metering_3))
View(houseWeek)

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
                         levels = c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"))

plot_ly(data=table, x = ~weekdays, y = ~meansub1, name = "Kitchen", type = "scatter", mode = "lines") %>%
  add_trace(y = table$meansub2, name = "Laundry Room", mode = "lines") %>%
  add_trace(y = table$meansub3, name = "Water Heater & AC", mode = "lines") %>%
  layout(title = "Weekly average power consumption",
         xaxis = list(title = "Week days"),
         yaxis = list(title = "Power(watt-hours)"))
















##Calculating the average per day
avgdayALL <- Yrs2007_2010 %>%
  group_by(Year,
           Month,
           Day) %>%
  summarise(meanSub_1 = mean(Sub_metering_1),
            meanSub_2 = mean(Sub_metering_2),
            meanSub_3 = mean(Sub_metering_3),
            meanSub_4 = mean(Active_energy),
            meanGAP = mean(GAP))




houseWeek <- filter(avgdayALL,
                    Year == 2007 & Month == 3) %>%
  group_by(Year, 
           Month,
           Day) 
View(houseWeek)

houseWeek <- filter(Yrs2007_2010,
                    Year == 2007 & Week == 11:16) %>%
  group_by(Year, 
           Day) %>%
  summarise(meanSub_1 = mean(Sub_metering_1),
            meanSub_2 = mean(Sub_metering_2),
            meanSub_3 = mean(Sub_metering_3))
View(houseWeek)

plot_ly(data=houseWeek, x = ~Day, y = ~meanSub_3, name = "Kitchen", type = "scatter", mode = "lines") %>%
  layout(title = "Weekly average power consumption",
         xaxis = list(title = "Week days"),
         yaxis = list(title = "Power(watt-hours)"))


plot_ly(data=houseWeek, x = ~Day, y = ~meanSub_1, name = "Kitchen", type = "scatter", mode = "lines") %>%
  add_trace(y = houseWeek$meanSub_2, name = "Laundry Room", mode = "lines") %>%
  add_trace(y = houseWeek$meanSub_3, name = "Water Heater & AC", mode = "lines") %>%
  layout(title = "Weekly average power consumption",
         xaxis = list(title = "Week days"),
         yaxis = list(title = "Power(watt-hours)"))

week 11 day 12

table <- data.frame(weekdays = c("Monday", 
                                 "Tuesday", 
                                 "Wednesday", 
                                 "Thursday", 
                                 "Friday", 
                                 "Saturday", 
                                 "Sunday"),
                    meansub1 = c(0.6326389, 
                                 0.6465278, 
                                 0.6486111, 
                                 0.6784722, 
                                 4.8625000, 
                                 2.3826389, 
                                 2.7111111),
                    meansub2 = c(0.3618056, 
                                 1.9805556, 
                                 3.3965278, 
                                 1.9465278, 
                                 1.3263889, 
                                 1.9131944, 
                                 3.8020833),
                    meansub3 = c(6.339583, 
                                 3.825000, 
                                 5.396528, 
                                 3.761806, 
                                 4.620833, 
                                 4.765278, 
                                 8.320833))

table$weekdays <- factor(table$weekdays, 
                         levels = c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"))

plot_ly(data=table, x = ~weekdays, y = ~meansub1, name = "Kitchen", type = "scatter", mode = "lines") %>%
  add_trace(y = table$meansub2, name = "Laundry Room", mode = "lines") %>%
  add_trace(y = table$meansub3, name = "Water Heater & AC", mode = "lines") %>%
  layout(title = "Weekly average power consumption",
         xaxis = list(title = "Week days"),
         yaxis = list(title = "Power(watt-hours)"))
#Sub-meter 1
plot_ly(avgweek2007, 
        x = ~avgweek2007$Week, 
        y = ~avgweek2007$meanSub_1, 
        name = 'Sub1', 
        type = 'scatter', 
        mode = 'lines',
        line = list(width = 2))%>%
  add_trace(y = ~avgweek2007$meanSub_2, name = 'Sub2', mode = 'lines') %>%
  add_trace(y = ~avgweek2007$meanSub_3, name = 'Sub3', mode = 'lines') %>%
  layout(title = "Average Weekly Power Consumption Sub-meters 2007",
         xaxis = list(title = "Weeks", range = c(1,53)),
         yaxis = list (title = "Power (Average watt-hours)"))
 
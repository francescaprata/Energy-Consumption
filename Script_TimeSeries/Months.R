##////////////////MONTHS//////////////////////##
##Subsetting and plotting February 2008 
MonthAVG <- Yrs2007_2010 %>%
  group_by(Year,
           Quarter,
           Month,
           Week) %>%
  summarise(meanSub_1 = mean(Sub_metering_1),
            meanSub_2 = mean(Sub_metering_2),
            meanSub_3 = mean(Sub_metering_3),
            meanSub_4 = mean(Active_energy),
            meanGAP = mean(GAP))

houseMonthFebAVG <- avgdayALL %>%
  filter(Year == 2008,
         Month == 2)
                             

plot_ly(houseMonthFebAVG, x = ~houseMonthFebAVG$Day, y = ~houseMonthFebAVG$meanSub_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~houseMonthFebAVG$meanSub_2, name = 'Laundry Room', mode = 'lines') %>%
  add_trace(y = ~houseMonthFebAVG$meanSub_3, name = 'Water Heater & AC', mode = 'lines') %>%
  add_trace(y = ~houseMonthFebAVG$meanSub_4, name = 'Active Energy', mode = 'lines') %>%
  add_trace(y = ~houseMonthFebAVG$meanGAP, name = 'Global Active Energy', mode = 'lines') %>%
  layout(title = "Average Power Consumption February 2008",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (average watt-hours)"))

plot_ly(houseMonthFebAVG, x = ~houseMonthFebAVG$Day, y = ~houseMonthFebAVG$meanSub_1, name = 'Kitchen', type = 'scatter', mode = 'lines') %>%
  layout(title = "Average Power Consumption February 2008",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (average watt-hours)"))

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
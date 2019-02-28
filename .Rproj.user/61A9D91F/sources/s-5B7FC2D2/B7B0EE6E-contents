#######################################################################
# PROJECT:IoT Analytics Domain Research and Exploratory Data Analysis # 
# NAME:Francesca Prata                                                #
# SCRIPT:Data visualization                                           #
# DATE:14-02-2019                                                     #
# VERSION:5                                                           #
#######################################################################

#Retrieve previous data frame 
source(file = "1Data_Setup.R")

#####################
#Daily visualization#
#####################

#Subset the 12th day of January 2008 
houseDay10 <- filter(Yrs2007_2009, 
                     Year == 2008 & Month == 1 & Day == 14 & (Minute == 0 | 
                                                              Minute == 10 | 
                                                              Minute == 20 | 
                                                              Minute == 30 | 
                                                              Minute == 40 | 
                                                              Minute == 50))

#Plot sub-meters 1, 2 and 3 
plot_ly(houseDay10, x = ~houseDay10$DateTime, 
        y = ~houseDay10$Sub_metering_1, 
        name = 'Kitchen', 
        type = 'scatter', 
        mode = 'lines') %>%
  add_trace(y = ~houseDay10$Sub_metering_2, 
            name = 'Laundry Room', 
            mode = 'lines') %>%
  add_trace(y = ~houseDay10$Sub_metering_3, 
            name = 'Water Heater & AC', 
            mode = 'lines') %>%
  layout(title = "Power Consumption January 14th, 2008",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))

#Plot only Submeter 1 per day
plot_ly(houseDay10, 
        x = ~houseDay10$DateTime, 
        y = ~houseDay10$Sub_metering_1, 
        name = 'Kitchen', 
        type = 'scatter', 
        mode = 'lines') %>%
  layout(title = "Power Consumption Kitchen January 14th, 2008",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))

#Plot only Submeter 2 per day
plot_ly(houseDay10, 
        x = ~houseDay10$DateTime, 
        y = ~houseDay10$Sub_metering_2, 
        name = 'Laundry Room', 
        type = 'scatter', 
        mode = 'lines') %>%
  layout(title = "Power Consumption Laundry Room January 14th, 2008",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))

#Plot only Submeter 3 per day
plot_ly(houseDay10, 
        x = ~houseDay10$DateTime, 
        y = ~houseDay10$Sub_metering_3, 
        name = 'Water Heater & AC', 
        type = 'scatter', 
        mode = 'lines') %>%
  layout(title = "Power Consumption Water Heater and AC January 14th, 2008",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))

######################
#Weekly visualization#
######################

#Subset per week 
houseWeek <- filter(Yrs2007_2009,
                    Year == 2007 & Week == 21)

#Plot sub-meters 1, 2 and 3
plot_ly(houseWeek, 
        x = ~houseWeek$DateTime, 
        y = ~houseWeek$Sub_metering_1, 
        name = 'Kitchen', type = 'scatter', 
        mode = 'lines') %>%
  add_trace(y = ~houseWeek$Sub_metering_2, 
            name = 'Laundry Room', 
            mode = 'lines') %>%
  add_trace(y = ~houseWeek$Sub_metering_3, 
            name = 'Water Heater & AC', 
            mode = 'lines') %>%
  layout(title = "Power Consumption week 21 May 2007",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))

#######################
#Monthly visualization#
#######################

#Subset per month
houseMonth <- filter(Yrs2007_2009, 
                       Year == 2007 & (Month == 1 | Month == 2 | Month == 3 | 
                                         Month == 4 | Month == 5 | Month == 6 | 
                                         Month == 7 | Month == 8 | Month == 9 | 
                                         Month == 10 | Month == 11 | Month == 12))

#Plot sub-meters 1, 2 and 3
plot_ly(houseMonth, 
        x = ~houseMonth$DateTime, 
        y = ~houseMonth$Sub_metering_1, 
        name = 'Kitchen', 
        type = 'scatter', 
        mode = 'lines') %>%
  add_trace(y = ~houseMonth$Sub_metering_2, 
            name = 'Laundry Room', 
            mode = 'lines') %>%
  add_trace(y = ~houseMonth$Sub_metering_3, 
            name = 'Water Heater & AC', 
            mode = 'lines') %>%
  layout(title = "Power Consumption 2007 per month",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))


######################
#Yearly visualization#
######################

#Subset consumption for 2007
data_2007 <- Yrs2007_2009 %>%
  filter(Year == 2007)

#Plot sub-meters 1, 2 and 3
plot_ly(data_2007, 
        x = ~data_2007$DateTime, 
        y = ~data_2007$Sub_metering_1, 
        name = 'Kitchen', 
        type = 'scatter', 
        mode = 'lines') %>%
  add_trace(y = ~data_2007$Sub_metering_2, 
            name = 'Laundry Room', 
            mode = 'lines') %>%
  add_trace(y = ~data_2007$Sub_metering_3, 
            name = 'Water Heater & AC', 
            mode = 'lines') %>%
  layout(title = "Power Consumption 2007 per month",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))

##PROJECT:IoT Analytics Domain Research and Exploratory Data Analysis 
##NAME:Francesca Prata
##SCRIPT:Data visualization
##DATE:13-02-2019
##VERSION:3


#////////////////////DIFFERENT DAYS OF THE YEAR/////////////////////////////#
##Subset of a winter day 
winterday <- yrs_2007to2009 %>%
  filter(year == 2007,
         month == 2,
         day == 13)

##Plotting winter day 
ggplot(winterday) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "red") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "blue") +
  ggtitle("Winter day consumption 2007") +
  ylab("Watt hour") +
  xlab("Time of day")

##Subset of a spring day 
springday <- yrs_2007to2009 %>%
  filter(year == 2007,
         month == 5,
         day == 26)

##Plotting spring day 
ggplot(springday) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "blue") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "red") +
  ggtitle("Spring day consumption 2007") +
  ylab("Watt hour") +
  xlab("Time of day")

##Subset of a summer day 
summerday <- yrs_2007to2009 %>%
  filter(year == 2007,
         month == 6,
         day == 25)

##Plotting summerday 
ggplot(summerday) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "blue") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "red") +
  ggtitle("Summer day consumption 2007") +
  ylab("Watt hour") +
  xlab("Time of day")

##Subset of an autumn day 
autumnday <- yrs_2007to2009 %>%
  filter(year == 2007,
         month == 10,
         day == 1)

##Plotting autumn day 
ggplot(autumnday) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "blue") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "red") +
  scale_color_manual("",
                     values = c("Kitchen" = "green", 
                                "Laundry room" = "blue",
                                "Water heater & AC" = "red")) +
  ggtitle("Autumn day consumption 2007") +
  ylab("Watt hour") + 
  xlab("Time of day")

#///////////////////////////////////////////////////////////////////////////#

#////////////////////INDIVIDUAL SUBMETERS THROUGH THE YEARS/////////////////#
##Submeter 1
ggplot(yrs_2007to2009) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  ggtitle("Yearly consumption submeter 1") +
  xlab ("Years") +  
  ylab("Watt hour")

##Submeter 2
ggplot(yrs_2007to2009) +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "blue") +
  ggtitle("Yearly consumption submeter 2") +
  xlab ("Years") +
  ylab("Watt hour")

##Submeter 3
ggplot(yrs_2007to2009) +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "red") +
  ggtitle("Yearly consumption submeter 3") +
  xlab ("Years") +
  ylab("Watt hour")

#///////////////////////////////////////////////////////////////////////////#

#///////////////////////COMPARISON SUBMETERS PER YEAR///////////////////////#
##Year 2007
ggplot(Y2007) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "blue") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "red") + 
  ggtitle("Consumption in 2007") +
  xlab ("Months") +
  ylab("Watt hour")

##Year 2008
ggplot(Y2008) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "blue") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "red") + 
  ggtitle("Consumption in 2008") +
  xlab ("Months") +
  ylab("Watt hour")

##Year 2009
ggplot(Y2009) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "blue") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "red") + 
  ggtitle("Consumption in 2009") +
  xlab ("Months") +
  ylab("Watt hour")

#///////////////////////////////////////////////////////////////////////////#

#///////////////////# WEEK DAYS VS WEEKENDS #///////////////////////////////#
##Plotting Week days 
ggplot(Weekdays) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "red") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "blue") +
  ggtitle("Energy consumption on weekdays") +
  ylab("Watt hour")

##Plotting Weekends
ggplot(Weekends) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "red") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "blue") +
  ggtitle("Energy consumption on weekends") +
  ylab("Watt hour")

#///////////////////////////////////////////////////////////////////////////#

#/////////////PLOTTING THE TIMES OF THE DAY /////////////// ////////////////#
ggplot(Morning) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "blue") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "red") +
  ggtitle("Morning consumption") +
  ylab("Watt hour")

ggplot(Afternoon) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "blue") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "red") +
  ggtitle("Afternoon consumption") + 
  ylab("Watt hour")

ggplot(Evening) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "blue") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "red") +
  ggtitle("Evening consumption") +
  ylab("Watt hour")

ggplot(Night) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "blue") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "red") +
  ggtitle("Night consumption") +
  ylab("Watt hour")

#///////////////////////////////////////////////////////////////////////////#

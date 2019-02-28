##PROJECT:IoT Analytics Domain Research and Exploratory Data Analysis 
##NAME:Francesca Prata
##SCRIPT:Data visualization
##DATE:12-02-2019
##VERSION:2

##Plotting weekdays 
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

##Subset of a winter day 
winterday <- yrs_2007to2009 %>%
  filter(year == 2007,
         month == 2,
         day == 12)

##Plotting winter day 
ggplot(winterday) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "red") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "blue") +
  ggtitle("Winter day consumption 2007") +
  ylab("Watt hour")

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
  ylab("Watt hour")


##Subset of a spring day 
springday <- yrs_2007to2009 %>%
  filter(year == 2007,
         month == 5,
         day == 2)

##Plotting spring day 
ggplot(springday) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "blue") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "red") +
  ggtitle("Spring day consumption 2007") +
  ylab("Watt hour")


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
  ggtitle("Autumn day consumption 2007") +
  ylab("Watt hour")


##Plotting January 2007
Jan2007 <- yrs_2007to2009 %>%
  filter(year == 2007,
         month == 1)

ggplot(Jan2007) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "blue") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "red") +
  ggtitle("January 2007") + 
  ylab("Watt hour")

##Plotting the times of the day - for all years
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

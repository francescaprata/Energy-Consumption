##PROJECT:IoT Analytics Domain Research and Exploratory Data Analysis 
##NAME:Francesca Prata
##SCRIPT:Data visualization
##DATE:12-02-2019
##VERSION:1

##Plotting morningwinter
morningwinter <- morning %>% filter(year == 2007,
                                    month == 2,
                                    day == 12)
##Plot morningwinter 
ggplot(morningwinter) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "red") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "blue") +
  ggtitle("Winter morning consumption")

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
  ggtitle("Winter day consumption")

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
  ggtitle("Summer day consumption")

###################Also spring and autumn day?##################

##Subset of a spring day 
springday <- yrs_2007to2009 %>%
  filter(year == 2007,
         month == 5,
         day == 2)

##Plotting summerday 
ggplot(springday) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "blue") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "red") +
  ggtitle("Spring day consumption")


##Subset of an autumn day 
autumnday <- yrs_2007to2009 %>%
  filter(year == 2007,
         month == 10,
         day == 1)

##Plotting autumnday 
ggplot(autumnday) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "blue") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "red") +
  ggtitle("Autumn day consumption")



##Plotting January 2007
Jan2007 <- yrs_2007to2009 %>%
  filter(year == 2007,
         month == 1)

ggplot(Jan2007) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "blue") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "red") +
  ggtitle("January 2007")

##Plotting all spring times
ggplot(Spring) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "blue") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "red") +
  ggtitle("Spring time consumption")

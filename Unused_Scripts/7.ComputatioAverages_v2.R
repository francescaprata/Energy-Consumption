##PROJECT:IoT Analytics Domain Research and Exploratory Data Analysis 
##NAME:Francesca Prata
##SCRIPT:Computation of averages
##DATE:14-02-2019
##VERSION:2

Avg2007to2009_2 <- yrs_2007to2009 %>%
  mutate(DateTime = floor_date(DateTime)) %>%
  group_by(DateTime) %>%
  summarise(AvgSubMeter1 = mean(Sub_metering_1))
View(Avg2007to2009_2)



df %>%
  mutate(date = floor_date(date)) %>%
  group_by(date) %>%
  summarize(mean_X1 = mean(X1))


##Include average usage per submeter over 2007 and 2009 according to day
Avg2007to2009_2 <- yrs_2007to2009 %>%
  group_by(day) %>%
  mutate(avgDaySub1 = mean(Sub_metering_1)) %>%
  mutate(avgDaySub2 = mean(Sub_metering_2)) %>%
  mutate(avgDaySub3 = mean(Sub_metering_3))

##Include averages per hour
Avg2007to2009_2 <- yrs_2007to2009 %>%
  group_by(hour) %>%
  mutate(avgHourSub1 = mean(Sub_metering_1)) %>%
  mutate(avgHourSub2 = mean(Sub_metering_2)) %>%
  mutate(avgHourSub3 = mean(Sub_metering_3))

Avg2007to2009_2

##Creating subsets of time with the averages
Morning <- subset(Avg2007to2009_2, 
                  hour == 6:11)
Afternoon <- subset(Avg2007to2009_2, 
                    hour == 12:17)
Evening <- subset(Avg2007to2009_2, 
                  hour == 18:23)
Night <- subset(Avg2007to2009_2, 
                hour == 0:5)

ggplot(Morning) +
  geom_line(aes(x=year, y=avgHourSub1), color = "green") +
  geom_line(aes(x=year, y=avgHourSub2), color = "blue") +
  geom_line(aes(x=year, y=avgHourSub3), color = "red") +
  ggtitle("Average Morning consumption") +
  ylab("Watt hour")  

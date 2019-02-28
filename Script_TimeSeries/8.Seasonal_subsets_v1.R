##PROJECT:IoT Analytics Visualize and Analyze Energy Data
##NAME:Francesca Prata
##SCRIPT:Seasonal subsets 
##DATE:19-02-2019
##VERSION:1

##////////////////SUBSETS PER SEASON////////////////////////##
Winter <- subset(Yrs2007_2010,
                 Quarter == 1)
Spring <- subset(Yrs2007_2010,
                 Quarter == 2)
Summer <- subset(Yrs2007_2010,
                 Quarter == 3)
Autumn <- subset(Yrs2007_2010,
                 Quarter == 4)

##////////////////AVERAGES PER SEASON////////////////////////##
##Spring
avgSpring <- Spring %>%
  group_by(Year) %>%
  summarise(meanSub_1 = mean(Sub_metering_1),
            meanSub_2 = mean(Sub_metering_2),
            meanSub_3 = mean(Sub_metering_3),
            meanSub_4 = mean(Global_active_power),
            meanGAP = mean(GAP)) 

##Summer
avgSummer <- Summer %>%
  group_by(Year) %>%
  summarise(meanSub_1 = mean(Sub_metering_1),
            meanSub_2 = mean(Sub_metering_2),
            meanSub_3 = mean(Sub_metering_3),
            meanSub_4 = mean(Global_active_power),
            meanGAP = mean(GAP)) 


##Autumn
avgAutumn <- Autumn %>%
  group_by(Year) %>%
  summarise(meanSub_1 = mean(Sub_metering_1),
            meanSub_2 = mean(Sub_metering_2),
            meanSub_3 = mean(Sub_metering_3),
            meanSub_4 = mean(Global_active_power),
            meanGAP = mean(GAP)) 

##Winter
avgWinter <- Winter %>%
  group_by(Year) %>%
  summarise(meanSub_1 = mean(Sub_metering_1),
            meanSub_2 = mean(Sub_metering_2),
            meanSub_3 = mean(Sub_metering_3),
            meanSub_4 = mean(Global_active_power),
            meanGAP = mean(GAP)) 

##////////////////TOTALS PER SEASON////////////////////////##
##Spring
totalSpring <- Spring %>%
  group_by(Year) %>%
  summarise(totalSub_1 = sum(Sub_metering_1),
            totalSub_2 = sum(Sub_metering_2),
            totalSub_3 = sum(Sub_metering_3),
            totalSub_4 = sum(Global_active_power),
            totalGAP = sum(GAP)) 

##Summer
totalSummer <- Summer %>%
  group_by(Year) %>%
  summarise(totalSub_1 = sum(Sub_metering_1),
            totalSub_2 = sum(Sub_metering_2),
            totalSub_3 = sum(Sub_metering_3),
            totalSub_4 = sum(Global_active_power),
            totalGAP = sum(GAP)) 

##Autumn
totalAutumn <- Autumn %>%
  group_by(Year) %>%
  summarise(totalSub_1 = sum(Sub_metering_1),
            totalSub_2 = sum(Sub_metering_2),
            totalSub_3 = sum(Sub_metering_3),
            totalSub_4 = sum(Global_active_power),
            totalGAP = sum(GAP)) 

##Winter
totalWinter <- Winter %>%
  group_by(Year) %>%
  summarise(totalSub_1 = sum(Sub_metering_1),
            totalSub_2 = sum(Sub_metering_2),
            totalSub_3 = sum(Sub_metering_3),
            totalSub_4 = sum(Global_active_power),
            totalGAP = sum(GAP)) 

##////////////////PLOTTING AVERAGES////////////////////////##
##Plotting Spring 2007-2010 
ggplot(avgSpring, aes(x=Year, y="Average Watt per hour", group = 1)) +
  geom_line(aes(x=Year, y=meanSub_1), colour = "blue") +
  geom_line(aes(x=Year, y=meanSub_2), colour = "orange") +
  geom_line(aes(x=Year, y=meanSub_3), colour = "green") +
  labs(title="Average Spring Consumption 2007-2010", y = "Average watts per hour") +
  theme_classic()

##Plotting Summer 2007-2010
ggplot(avgSummer, aes(x=Year, y="Average Watt per hour", group = 1)) +
  geom_line(aes(x=Year, y=meanSub_1), colour = "blue") +
  geom_line(aes(x=Year, y=meanSub_2), colour = "orange") +
  geom_line(aes(x=Year, y=meanSub_3), colour = "green") +
  labs(title="Average Summer Consumption 2007-2010", y = "Average watts per hour") +
  theme_classic()

##Plotting Autumn 2007-2010
ggplot(avgAutumn, aes(x=Year, y="Average Watt per hour", group = 1)) +
  geom_line(aes(x=Year, y=meanSub_1), colour = "blue") +
  geom_line(aes(x=Year, y=meanSub_2), colour = "orange") +
  geom_line(aes(x=Year, y=meanSub_3), colour = "green") +
  labs(title="Average Autumn Consumption 2007-2010", y = "Average watts per hour") +
  theme_classic()

##Plotting Winter 2007-2010
ggplot(avgWinter, aes(x=Year, y="Average Watt per hour", group = 1)) +
  geom_line(aes(x=Year, y=meanSub_1), colour = "blue") +
  geom_line(aes(x=Year, y=meanSub_2), colour = "orange") +
  geom_line(aes(x=Year, y=meanSub_3), colour = "green") +
  labs(title="Average Winter Consumption 2007-2010", y = "Average watts per hour") +
  theme_classic()

##////////////////PLOTTING TOTALS////////////////////////##
##Plotting Spring 2007-2010 
ggplot(totalSpring, aes(x=Year, y="Total Watt per hour", group = 1)) +
  geom_line(aes(x=Year, y=totalSub_1), colour = "blue") +
  geom_line(aes(x=Year, y=totalSub_2), colour = "orange") +
  geom_line(aes(x=Year, y=totalSub_3), colour = "green") +
  labs(title="Total Spring Consumption 2007-2010", y = "Total watts per hour") +
  theme_classic()

##Plotting Summer 2007-2010
ggplot(totalSummer, aes(x=Year, y="Total Watt per hour", group = 1)) +
  geom_line(aes(x=Year, y=totalSub_1), colour = "blue") +
  geom_line(aes(x=Year, y=totalSub_2), colour = "orange") +
  geom_line(aes(x=Year, y=totalSub_3), colour = "green") +
  labs(title="Total Summer Consumption 2007-2010", y = "Total watts per hour") +
  theme_classic()

##Plotting Autumn 2007-2010
ggplot(totalAutumn, aes(x=Year, y="Total Watt per hour", group = 1)) +
  geom_line(aes(x=Year, y=totalSub_1), colour = "blue") +
  geom_line(aes(x=Year, y=totalSub_2), colour = "orange") +
  geom_line(aes(x=Year, y=totalSub_3), colour = "green") +
  labs(title="Total Autumn Consumption 2007-2010", y = "Total watts per hour") +
  theme_classic()

##Plotting Winter 2007-2010
ggplot(totalWinter, aes(x=Year, y="Total Watt per hour", group = 1)) +
  geom_line(aes(x=Year, y=totalSub_1), colour = "blue") +
  geom_line(aes(x=Year, y=totalSub_2), colour = "orange") +
  geom_line(aes(x=Year, y=totalSub_3), colour = "green") +
  labs(title="Total Winter Consumption 2007-2010", y = "Total watts per hour") +
  theme_classic()


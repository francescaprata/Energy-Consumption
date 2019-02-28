##PROJECT:IoT Analytics Domain Research and Exploratory Data Analysis 
##NAME:Francesca Prata
##SCRIPT:Computation of averages
##DATE:14-02-2019
##VERSION:1

#////////////////////AVERAGE CONSUMPTION PER MONTH//////////////////#
AvgSubMeter1_2007 <- Y2007 %>%
  group_by(month) %>%
  summarise(avg_submeter1 = mean(Sub_metering_1)) %>%
  select(avg_submeter1)

AvgSubMeter1_2008 <- Y2008 %>%
  group_by(month) %>%
  summarise(avg_submeter1 = mean(Sub_metering_1)) %>%
  select(avg_submeter1)

AvgSubMeter1_2009 <- Y2009 %>%
  group_by(month) %>%
  summarise(avg_submeter1 = mean(Sub_metering_1))  %>%
  select(avg_submeter1)

#////////////////////AVERAGE CONSUMPTION PER DAY///////////////////#
##Submeter 1
DayAvgSubMeter1_2007 <- Y2007 %>%
  group_by(day) %>%
  summarise(avg_submeter1 = mean(Sub_metering_1)) %>%
  select(avg_submeter1)

DayAvgSubMeter1_2008 <- Y2008 %>%
  group_by(day) %>%
  summarise(avg_submeter1 = mean(Sub_metering_1)) %>%
  select(avg_submeter1)

DayAvgSubMeter1_2009 <- Y2009 %>%
  group_by(day) %>%
  summarise(avg_submeter1 = mean(Sub_metering_1))  %>%
  select(avg_submeter1)

#Sub-meter 2
DayAvgSubMeter2_2007 <- Y2007 %>%
  group_by(day) %>%
  summarise(avg_submeter2 = mean(Sub_metering_2))  %>%
  select(avg_submeter2)

DayAvgSubMeter2_2008 <- Y2008 %>%
  group_by(day) %>%
  summarise(avg_submeter2 = mean(Sub_metering_2))  %>%
  select(avg_submeter2)

DayAvgSubMeter2_2009 <- Y2009 %>%
  group_by(day) %>%
  summarise(avg_submeter2 = mean(Sub_metering_2))  %>%
  select(avg_submeter2)

#Sub-meter 3
DayAvgSubMeter3_2007 <- Y2007 %>%
  group_by(day) %>%
  summarise(avg_submeter3 = mean(Sub_metering_3))  %>%
  select(avg_submeter3)

DayAvgSubMeter3_2008 <- Y2008 %>%
  group_by(day) %>%
  summarise(avg_submeter3 = mean(Sub_metering_3))  %>%
  select(avg_submeter3)

DayAvgSubMeter3_2009 <- Y2009 %>%
  group_by(day) %>%
  summarise(avg_submeter3 = mean(Sub_metering_3))  %>%
  select(avg_submeter3)

##Adding this to the dataset

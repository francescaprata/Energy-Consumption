##PROJECT:IoT Analytics Domain Research and Exploratory Data Analysis 
##NAME:Francesca Prata
##SCRIPT:Initial data exploration 
##DATE:11-02-2019
##VERSION:1

##Exploring sub-meters 
summary(yrs_2007to2009$Sub_metering_1)
summary(yrs_2007to2009$Sub_metering_2)
summary(yrs_2007to2009$Sub_metering_3)

##Exploring quarters 
Quarter1 <- filter(yrs_2007to2009, quarter==1)
Quarter2 <- filter(yrs_2007to2009, quarter==2)
Quarter3 <- filter(yrs_2007to2009, quarter==3)
Quarter4 <- filter(yrs_2007to2009, quarter==4)

##Exploring weekends -- REDO -- look at diplyr 
Weekends %>% 
  select(DateTime, 
         Date, 
         Time,
         Sub_metering_1, 
         Sub_metering_2, 
         Sub_metering_3, 
         year, 
         quarter, 
         month, 
         week, 
         weekdays, 
         day, 
         hour, 
         minute %>% filter(weekdays == "Saturday" & weekdays == "Sunday")


Weekends <- filter(yrs_2007to2009, weekdays =="Saturday")

##Exploring morning (6-noon), afternoon (noon-6), evening (6-midnight) and night (midnight to 6)

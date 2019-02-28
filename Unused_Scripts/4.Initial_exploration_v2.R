##PROJECT:IoT Analytics Domain Research and Exploratory Data Analysis 
##NAME:Francesca Prata
##SCRIPT:Initial data exploration 
##DATE:12-02-2019
##VERSION:2

##Exploring sub-meters 
summary(yrs_2007to2009$Sub_metering_1)
summary(yrs_2007to2009$Sub_metering_2)
summary(yrs_2007to2009$Sub_metering_3)

##Creating subsets for quarters 
Winter <- subset(yrs_2007to2009, quarter==1) 
Spring <- subset(yrs_2007to2009, quarter==2) 
Summer <- subset(yrs_2007to2009, quarter==3)
Autumn <- subset(yrs_2007to2009, quarter==4)

##Creating subset for weekends  
weekends <- subset(yrs_2007to2009, weekday!="Monday:Friday")


         
         Weekends <- filter(yrs_2007to2009, weekdays =="Saturday")
         
##Creating subsets for morning (6-noon), afternoon (noon-6), evening (6-midnight) and night (midnight to 6)
night <- subset(yrs_2007to2009, hour==0:6)
morning <- subset(yrs_2007to2009, hour==7:12)
afternoon <- subset(yrs_2007to2009, hour==13:18)
evening <- subset(yrs_2007to2009, hour==19:23)

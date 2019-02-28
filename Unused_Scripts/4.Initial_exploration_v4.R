##PROJECT:IoT Analytics Domain Research and Exploratory Data Analysis 
##NAME:Francesca Prata
##SCRIPT:Initial data exploration - ALL ENERGY 
##DATE:13-02-2019
##VERSION:4

##Exploring sub-meters 
summary(yrs_2007to2009$Sub_metering_1)
summary(yrs_2007to2009$Sub_metering_2)
summary(yrs_2007to2009$Sub_metering_3)

##////////// summary(yrs_2007to2009$Global_active_power) //////// not included in 13/02 analysis ///////////

##Creating total submeters ///// TO BE LOOKED AT AGAIN ////////////////
Total_submeter <- mutate(yrs_2007to2009,
                         totalsub1 = sum(Sub_metering_1),
                         totalsub2 = sum(Sub_metering_2),
                         totalsub3 = sum(Sub_metering_3))

##Creating subsets for quarters 
Winter <- subset(yrs_2007to2009, 
                 quarter == 1) 
Spring <- subset(yrs_2007to2009, 
                 quarter == 2) 
Summer <- subset(yrs_2007to2009, 
                 quarter == 3)
Autumn <- subset(yrs_2007to2009, 
                 quarter == 4)

##Creating subset for week days  
Weekdays <- subset(yrs_2007to2009, 
                   weekdays != "Saturday" & weekdays != "Sunday")

##Creating subset for weekends 
Weekends <- subset(yrs_2007to2009, 
                   weekdays != "Monday:Friday")


##Creating subsets for morning (6-noon), afternoon (noon-6), evening (6-midnight) and night (midnight to 6)
Morning <- subset(yrs_2007to2009, 
                  hour == 6:11)
Afternoon <- subset(yrs_2007to2009, 
                    hour == 12:17)
Evening <- subset(yrs_2007to2009, 
                  hour == 18:23)
Night <- subset(yrs_2007to2009, 
                hour == 0:5)

##Creating subsets for years 
Y2007 <- subset(yrs_2007to2009,
                     year == 2007)

Y2008 <- subset(yrs_2007to2009,
                     year == 2008)

Y2009 <- subset(yrs_2007to2009,
                     year == 2009)


##Creating subsets for years TOTAL
Y2007Total <- subset(yrs_2007to2009TOTAL,
                year == 2007)

Y2008Total <- subset(yrs_2007to2009TOTAL,
                year == 2008)

Y2009Total <- subset(yrs_2007to2009TOTAL,
                year == 2009)


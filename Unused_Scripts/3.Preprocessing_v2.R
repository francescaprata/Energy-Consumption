##PROJECT:IoT Analytics Domain Research and Exploratory Data Analysis 
##NAME:Francesca Prata
##SCRIPT:Preprocessing - Creating DateTime & Lubridate 
##DATE:11-02-2019
##VERSION:2

##Combine Date and Time attribute values in a new attribute column
newDF <-cbind(newDF,
              paste(newDF$Date,newDF$Time), 
              stringsAsFactors=FALSE)

##Give the new attribute in the 6th column a header name 
colnames(newDF)[7] <-"DateTime"

##Move the DateTime attribute within the dataset
newDF <- newDF[,c(ncol(newDF), 1:(ncol(newDF)-1))]
head(newDF)

##Convert DateTime from POSIXlt to POSIXct 
newDF$DateTime <- as.POSIXct(newDF$DateTime, "%Y/%m/%d %H:%M:%S")

##Add the time zone
attr(newDF$DateTime, "tzone") <- "Europe/Paris"

##Create "year" attribute with lubridate
newDF$year <- year(newDF$DateTime) 

##Create "quarter" attribute with lubridate
newDF$quarter <- quarter(newDF$DateTime) 

##Create "month" attribute with lubridate
newDF$month <- month(newDF$DateTime)

##Create "week" attribute with lubridate
newDF$week <- week(newDF$DateTime) 

##Create "weekdays" attribute with lubridate
newDF$weekdays <- weekdays(newDF$DateTime) 

##Create "day" attribute with lubridate
newDF$day <- day(newDF$DateTime) 

##Create "hour" attribute with lubridate
newDF$hour <- hour(newDF$DateTime) 

##Create "minute" attribute with lubridate
newDF$minute <- minute(newDF$DateTime) 

##Inspecting primary data frame
table(newDF$year)

##Remove rows containing 2010
yrs_2007to2009 <- subset(newDF,
                        year == 2007:2009) 

##Change year, quarter, month, week, weekday and day into factors 
yrs_2007to2009$year <- as.factor(yrs_2007to2009$year)
yrs_2007to2009$quarter <- as.factor(yrs_2007to2009$quarter)
yrs_2007to2009$month <- as.factor(yrs_2007to2009$month)
yrs_2007to2009$week <- as.factor(yrs_2007to2009$week)
yrs_2007to2009$weekdays <- as.factor(yrs_2007to2009$weekdays)
yrs_2007to2009$day <- as.factor(yrs_2007to2009$day)

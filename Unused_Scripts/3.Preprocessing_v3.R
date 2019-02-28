##PROJECT:IoT Analytics Domain Research and Exploratory Data Analysis 
##NAME:Francesca Prata
##SCRIPT:Preprocessing - Creating DateTime & Lubridate 
##DATE:13-02-2019
##VERSION:3


##Combine Date and Time attribute to form DateTime
newDF <-cbind(newDF,
              paste(newDF$Date,newDF$Time), 
              stringsAsFactors=FALSE)

##Header name and relocating it within the dataset 
colnames(newDF)[6] <-"DateTime"
newDF <- newDF[,c(ncol(newDF), 1:(ncol(newDF)-1))]

##Convert DateTime from POSIXlt to POSIXct and adding the time zone 
newDF$DateTime <- as.POSIXct(newDF$DateTime, "%Y/%m/%d %H:%M:%S")
attr(newDF$DateTime, "tzone") <- "Europe/Paris"

##Creating attributes with lubridate
newDF$year <- year(newDF$DateTime) 
newDF$quarter <- quarter(newDF$DateTime) 
newDF$month <- month(newDF$DateTime)
newDF$week <- week(newDF$DateTime) 
newDF$weekdays <- weekdays(newDF$DateTime) 
newDF$day <- day(newDF$DateTime) 
newDF$hour <- hour(newDF$DateTime) 
newDF$minute <- minute(newDF$DateTime) 

##Removing rows containing 2010
yrs_2007to2009 <- subset(newDF,
                         year == 2007:2009) 

##Change year, quarter, month, week, weekday and day into factors 
yrs_2007to2009$year <- as.factor(yrs_2007to2009$year)
yrs_2007to2009$quarter <- as.factor(yrs_2007to2009$quarter)
yrs_2007to2009$month <- as.factor(yrs_2007to2009$month)
yrs_2007to2009$week <- as.factor(yrs_2007to2009$week)
yrs_2007to2009$weekdays <- as.factor(yrs_2007to2009$weekdays)
yrs_2007to2009$day <- as.factor(yrs_2007to2009$day)
 
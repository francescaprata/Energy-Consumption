######################################################################
# PROJECT:IoT Analytics Domain Research and Exploratory Data Analysis# 
# NAME:Francesca Prata                                               #
# SCRIPT:Data Setup                                                  #
# DATE:14-02-2019                                                    #
# VERSION:3                                                          #
######################################################################

#############
#Data set-up#
#############

##Installing packages and loading libraries
if(!require(pacman))install.packages("pacman")

pacman::p_load('RMySQL', 'dplyr', 'lubridate', 'ggplot2', 'plotly')

library(RMySQL)
library(dplyr)
library(lubridate)
library(ggplot2)
library(plotly)

##############################
#Create a database connection#
##############################

con = dbConnect(MySQL(), 
                user='deepAnalytics', 
                password='Sqltask1234!', 
                dbname='dataanalytics2018', 
                host='data-analytics-2018.cbrosir2cswx.us-east-1.rds.amazonaws.com')

#######################
#Downloading the years#
#######################

yr_2007SELECT <- dbGetQuery(con,"SELECT Date, 
                            Time,
                            Global_active_power,
                            Sub_metering_1, 
                            Sub_metering_2, 
                            Sub_metering_3 FROM yr_2007")

yr_2008SELECT <- dbGetQuery(con,"SELECT Date,
                            Time,
                            Global_active_power, 
                            Sub_metering_1, 
                            Sub_metering_2, 
                            Sub_metering_3 FROM yr_2008")

yr_2009SELECT <- dbGetQuery(con,"SELECT Date, 
                            Time,
                            Global_active_power, 
                            Sub_metering_1, 
                            Sub_metering_2, 
                            Sub_metering_3 FROM yr_2009")

#########################
#Creating the data frame#
#########################

#Combine datasets to create the Primary Data Frame
Yrs2007_2009 <- bind_rows(yr_2007SELECT, yr_2008SELECT, yr_2009SELECT)

#Combine Date and Time attribute to form DateTime
Yrs2007_2009 <-cbind(Yrs2007_2009,
              paste(Yrs2007_2009$Date, Yrs2007_2009$Time), 
              stringsAsFactors=FALSE)

#Header name and relocating it within the dataset 
colnames(Yrs2007_2009)[7] <- "DateTime"
Yrs2007_2009 <- Yrs2007_2009[,c(ncol(Yrs2007_2009), 1:(ncol(Yrs2007_2009)-1))]

#Remove old "Date" and "Time" attributes
Yrs2007_2009$Date <- NULL
Yrs2007_2009$Time <- NULL 

#Convert DateTime from POSIXlt to POSIXct and adding the time zone 
Yrs2007_2009$DateTime <- as.POSIXct(Yrs2007_2009$DateTime, "%Y/%m/%d %H:%M:%S")
attr(Yrs2007_2009$DateTime, "tzone") <- "Europe/Paris"

#Creating attributes for different time periods
Yrs2007_2009$Year <- year(Yrs2007_2009$DateTime) 
Yrs2007_2009$Quarter <- quarter(Yrs2007_2009$DateTime) 
Yrs2007_2009$Month <- month(Yrs2007_2009$DateTime)
Yrs2007_2009$Week <- week(Yrs2007_2009$DateTime) 
Yrs2007_2009$Weekdays <- weekdays(Yrs2007_2009$DateTime) 
Yrs2007_2009$Day <- day(Yrs2007_2009$DateTime) 
Yrs2007_2009$Hour <- hour(Yrs2007_2009$DateTime) 
Yrs2007_2009$Minute <- minute(Yrs2007_2009$DateTime) 

#Change year, quarter, month, week, weekdays and day into factors 
Yrs2007_2009$Year <- as.factor(Yrs2007_2009$Year)
Yrs2007_2009$Quarter <- as.factor(Yrs2007_2009$Quarter)
Yrs2007_2009$Month <- as.factor(Yrs2007_2009$Month)
Yrs2007_2009$Week <- as.factor(Yrs2007_2009$Week)
Yrs2007_2009$Weekdays <- as.factor(Yrs2007_2009$Weekdays)
Yrs2007_2009$Day <- as.factor(Yrs2007_2009$Day)

#Removing rows containing 2010
Yrs2007_2009 <- filter(Yrs2007_2009,
                         Year == 2007:2009) 

#######################
#Creating new variable#
#######################

#Energy not currently measured by the submeters (in watt hour)
Yrs2007_2009 <- Yrs2007_2009 %>%
  mutate(Sub_metering_4 = Global_active_power*(1000/60) -
           Sub_metering_1 -
           Sub_metering_2 -
           Sub_metering_3) 
######################################################################
# PROJECT:IoT Analytics Domain Research and Exploratory Data Analysis#
# NAME:Francesca Prata                                               #
# SCRIPT:Connecting to database                                      #
# DATE:18-02-2019                                                    #
# VERSION:4                                                          #
######################################################################

#############
#Data set-up#
#############
rm(list = ls())
set.seed(123)
Sys.setlocale("LC_TIME", "C")

##Installing packages and loading libraries
if(!require(pacman))install.packages("pacman")

pacman::p_load('RMySQL', 'dplyr', 'lubridate', 'ggplot2', 'ggfortify', 'plotly',
               'forecast', 'prophet')
  
library(RMySQL)
library(dplyr)
library(lubridate)
library(ggplot2)
library(ggfortify)
library(plotly)
library(forecast)
library(prophet)

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

yr_2010SELECT <- dbGetQuery(con,"SELECT Date, 
                            Time,
                            Global_active_power,
                            Sub_metering_1, 
                            Sub_metering_2, 
                            Sub_metering_3 FROM yr_2010")

#########################
#Creating the data frame#
#########################

#Combine datasets to create the Primary Data Frame
Yrs2007_2010 <- bind_rows(yr_2007SELECT, yr_2008SELECT, yr_2009SELECT, yr_2010SELECT)

#Combine Date and Time attribute to form DateTime
Yrs2007_2010 <-cbind(Yrs2007_2010,
                     paste(Yrs2007_2010$Date, Yrs2007_2010$Time), 
                     stringsAsFactors=FALSE)

#Header name and relocating it within the dataset 
colnames(Yrs2007_2010)[7] <- "DateTime"
Yrs2007_2010 <- Yrs2007_2010[,c(ncol(Yrs2007_2010), 1:(ncol(Yrs2007_2010)-1))]

#Remove old "Date" and "Time" attributes
Yrs2007_2010$Date <- NULL
Yrs2007_2010$Time <- NULL 

#Convert DateTime from POSIXlt to POSIXct and adding the time zone 
Yrs2007_2010$DateTime <- as.POSIXct(Yrs2007_2010$DateTime, "%Y/%m/%d %H:%M:%S")
attr(Yrs2007_2010$DateTime, "tzone") <- "Europe/Paris"

#Creating attributes for different time periods
Yrs2007_2010$Year <- year(Yrs2007_2010$DateTime) 
Yrs2007_2010$Quarter <- quarter(Yrs2007_2010$DateTime) 
Yrs2007_2010$Month <- month(Yrs2007_2010$DateTime)
Yrs2007_2010$Week <- week(Yrs2007_2010$DateTime) 
Yrs2007_2010$Weekdays <- weekdays(Yrs2007_2010$DateTime) 
Yrs2007_2010$Day <- day(Yrs2007_2010$DateTime) 
Yrs2007_2010$Hour <- hour(Yrs2007_2010$DateTime) 
Yrs2007_2010$Minute <- minute(Yrs2007_2010$DateTime)

#Change year, quarter, month, week, weekday and day into factors 
Yrs2007_2010$Year <- as.factor(Yrs2007_2010$Year)
Yrs2007_2010$Quarter <- as.factor(Yrs2007_2010$Quarter)
Yrs2007_2010$Month <- as.factor(Yrs2007_2010$Month)
Yrs2007_2010$Week <- as.factor(Yrs2007_2010$Week)
Yrs2007_2010$Weekdays <- as.factor(Yrs2007_2010$Weekdays)
Yrs2007_2010$Day <- as.factor(Yrs2007_2010$Day)

#Creating new variables for global active energy measured in kilowatts per hour
#And for active energy
Yrs2007_2010 <- mutate(Yrs2007_2010, GAP = Global_active_power * (1000/60))
Yrs2007_2010 <- mutate(Yrs2007_2010, 
                       Active_energy = GAP - 
                         Sub_metering_1 - 
                         Sub_metering_2 - 
                         Sub_metering_3)

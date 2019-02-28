##PROJECT:IoT Analytics Domain Research and Exploratory Data Analysis 
##NAME:Francesca Prata
##SCRIPT:Connecting to database
##DATE:11-02-2019
##VERSION:1

library(RMySQL)
library(dplyr)
library(lubridate)
library(ggplot2)

##Create a database connection
con = dbConnect(MySQL(), 
                user='deepAnalytics', 
                password='Sqltask1234!', 
                dbname='dataanalytics2018', 
                host='data-analytics-2018.cbrosir2cswx.us-east-1.rds.amazonaws.com')

##List the tables contained in the database
dbListTables(con)

##Attributes in year 2006
dbListFields(con,'yr_2006')

##Downloading the years
yr_2006SELECT <- dbGetQuery(con,"SELECT Date, 
                      Time,
                      Sub_metering_1, 
                      Sub_metering_2, 
                      Sub_metering_3 FROM yr_2006")

yr_2007SELECT <- dbGetQuery(con,"SELECT Date, 
                      Time,
                      Sub_metering_1, 
                      Sub_metering_2, 
                      Sub_metering_3 FROM yr_2007")

yr_2008SELECT <- dbGetQuery(con,"SELECT Date,
                      Time,
                      Sub_metering_1, 
                      Sub_metering_2, 
                      Sub_metering_3 FROM yr_2008")

yr_2009SELECT <- dbGetQuery(con,"SELECT Date, 
                      Time,
                      Sub_metering_1, 
                      Sub_metering_2, 
                      Sub_metering_3 FROM yr_2009")

yr_2010SELECT <- dbGetQuery(con,"SELECT Date, 
                      Time,
                      Sub_metering_1, 
                      Sub_metering_2, 
                      Sub_metering_3 FROM yr_2010")

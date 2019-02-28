##PROJECT:IoT Analytics Visualize and Analyze Energy Data
##NAME:Francesca Prata
##SCRIPT:Weather data 
##DATE:19-02-2019
##VERSION:1

setwd("C:/Users/Jeroen/Desktop/Ubiqum/IoT Analytics/Task 1 - Domain Research and Exploratory Data Analysis/Code/Paris daily weather text files")
weather_data <- read.csv("Paris weather csv.csv", sep = ";")


#Parse dates to useable format
weather_data$YYMMDD = ymd(weather_data$Date)
Full_dataset <- unite(Full_dataset, YYMMDD, Year, Month, Day, sep = "-", remove = FALSE)
Full_dataset$YYMMDD <- as.Date(Full_dataset$YYMMDD)
Full_dataset <- left_join(Full_dataset, weather_data %>% 
                            select(YYMMDD,
                                   Mean.temperature.Celsius, 
                                   Minimum.temperature..Celsius,
                                   Maximum.temperature.Celsius,
                                   Precipitation.amount.in.mm),
                          by = "YYMMDD")

##Code for ggplot 
##http://zevross.com/blog/2014/08/04/beautiful-plotting-in-r-a-ggplot2-cheatsheet-3/#quicksetup-the-dataset
g<-ggplot(nmmaps, aes(date, temp, color=factor(season)))+geom_point()
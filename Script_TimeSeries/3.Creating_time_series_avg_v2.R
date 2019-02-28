##PROJECT:IoT Analytics Visualize and Analyze Energy Data
##NAME:Francesca Prata
##SCRIPT:Creating time series 
##DATE:19-02-2019
##VERSION:2

## Subset to one observation per week on every 1st, 8th, 15th, 22nd and 29th day
##for 2007, 2008, 2009 and 2010 
houseweeklyAVG <- filter(avgdayALL, 
                           Day == 1 | Day == 8 | Day == 15 | Day == 22 | Day == 29)

##////////////////////////SUBMETER 3/////////////////////##
## Create TS object with SubMeter3
tsSM3_weeklyAVG <- ts(houseweeklyAVG$meanSub_3, 
                         frequency=52, 
                         start=c(2007,1))

## Plot sub-meter 3 with autoplot
autoplot(tsSM3_weeklyAVG, 
         colour = "dark green", 
         xlab = "Time", 
         ylab = "Average Watt Hours", 
         main = "Sub-meter 3")

## Plot sub-meter 3 with plot.ts
plot.ts(tsSM3_weeklyAVG)

##////////////////////////SUBMETER 1/////////////////////##
## Create TS object with SubMeter1
tsSM1_weeklyAVG <- ts(houseweeklyAVG$meanSub_1, 
                            frequency=52, 
                            start=c(2007,1))

## Plot sub-meter 1 with autoplot 
autoplot(tsSM1_weeklyAVG, 
         colour = "blue", 
         xlab = "Time", 
         ylab = "Average Watt Hours", 
         main = "Sub-meter 1")

## Plot sub-meter 1 with plot.ts
plot.ts(tsSM1_weeklyAVG)

##////////////////////////SUBMETER 2/////////////////////##
## Create TS object with SubMeter2
tsSM2_weeklyAVG <- ts(houseweeklyAVG$meanSub_2, 
                            frequency=52, 
                            start=c(2007,1))

## Plot sub-meter 2 with autoplot 
autoplot(tsSM2_weeklyAVG, 
         colour = "orange", 
         xlab = "Time", 
         ylab = "Average Watt Hours", 
         main = "Sub-meter 2")

## Plot sub-meter 2 with plot.ts
plot.ts(tsSM2_weeklyAVG)

##////////////////////////ACTIVE ENERGY/////////////////////##
## Create TS object with SubMeter4
tsSM4_weeklyAVG <- ts(houseweeklyAVG$meanSub_4, 
                            frequency=52, 
                            start=c(2007,1))

## Plot sub-meter 4 with autoplot
autoplot(tsSM4_weeklyAVG, 
         colour = "red", 
         xlab = "Time", 
         ylab = "Average Watt Hours", 
         main = "Active Energy")

##////////////////////////GLOBAL ACTIVE ENERGY/////////////////////##
## Create TS object with GAP
tsGAP_weeklyAVG <- ts(houseweeklyAVG$meanGAP, 
                      frequency=52, 
                      start=c(2007,1))

## Plot sub-meter 4 with autoplot
autoplot(tsGAP_weeklyAVG, 
         colour = "purple", 
         xlab = "Time", 
         ylab = "Average Watt Hours", 
         main = "Global Active Energy")

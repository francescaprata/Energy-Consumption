##PROJECT:IoT Analytics Visualize and Analyze Energy Data
##NAME:Francesca Prata
##SCRIPT:Creating time series 
##DATE:19-02-2019
##VERSION:2

## Subset to one observation per week on Mondays for 2007, 2008, 2009 and 2010 - considering TOTAL
house070809weeklyTOTAL <- filter(totaldayALL, 
                               Weekdays == "Monday")

## Create TS object with SubMeter3
tsSM3_070809weeklyTOTAL <- ts(house070809weeklyTOTAL$totalSub_3, 
                            frequency=52, 
                            start=c(2007,1))

## Plot sub-meter 3 with autoplot
autoplot(tsSM3_070809weeklyTOTAL, 
         colour = "red", 
         xlab = "Time", 
         ylab = "Total Watt Hours", 
         main = "Sub-meter 3")

## Plot sub-meter 3 with plot.ts
plot.ts(tsSM3_070809weeklyTOTAL)


## Create TS object with SubMeter1
tsSM1_070809weeklyTOTAL <- ts(house070809weeklyTOTAL$totalSub_1, 
                            frequency=52, 
                            start=c(2007,1))

## Plot sub-meter 1 with autoplot 
autoplot(tsSM1_070809weeklyTOTAL, 
         colour = "orange", 
         xlab = "Time", 
         ylab = "Total Watt Hours", 
         main = "Sub-meter 1")

## Plot sub-meter 1 with plot.ts
plot.ts(tsSM1_070809weeklyTOTAL)

## Create TS object with SubMeter2
tsSM2_070809weeklyTOTAL <- ts(house070809weeklyTOTAL$totalSub_2, 
                            frequency=52, 
                            start=c(2007,1))

## Plot sub-meter 2 with autoplot 
autoplot(tsSM2_070809weeklyTOTAL, 
         colour = "blue", 
         xlab = "Time", 
         ylab = "Total Watt Hours", 
         main = "Sub-meter 2")

## Plot sub-meter 2 with plot.ts
plot.ts(tsSM2_070809weeklyTOTAL)

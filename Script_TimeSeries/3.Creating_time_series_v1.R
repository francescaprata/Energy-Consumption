##PROJECT:IoT Analytics Visualize and Analyze Energy Data
##NAME:Francesca Prata
##SCRIPT:Creating time series 
##DATE:18-02-2019
##VERSION:1

## Subset to one observation per week on Mondays at 8:00pm for 2007, 2008, 2009 and 2010
house070809weekly <- filter(Yrs2007_2010, 
                            Weekdays == "Monday" & 
                              Hour == 20 & 
                              Minute == 1)

## Create TS object with SubMeter3
tsSM3_070809weekly <- ts(house070809weekly$Sub_metering_3, 
                         frequency=52, 
                         start=c(2007,1))

## Plot sub-meter 3 with autoplot (you may need to install these packages)
autoplot(tsSM3_070809weekly)

## Plot sub-meter 3 with autoplot - add labels, color
autoplot(tsSM3_070809weekly, colour = "red", xlab = "Time", ylab = "Watt Hours", main = "Sub-meter 3")


## Plot sub-meter 3 with plot.ts
plot.ts(tsSM3_070809weekly)


## Create TS object with SubMeter1
tsSM1_070809weekly <- ts(house070809weekly$Sub_metering_1, 
                         frequency=52, 
                         start=c(2007,1))

## Create TS object with SubMeter2
tsSM2_070809weekly <- ts(house070809weekly$Sub_metering_2, 
                         frequency=52, 
                         start=c(2007,1))

## Plot sub-meter 1 with autoplot - add labels, color
autoplot(tsSM1_070809weekly, colour = 'blue', xlab = "Time", ylab = "Watt Hours", main = "Sub-meter 1")

## Plot sub-meter 1 with plot.ts
plot.ts(tsSM1_070809weekly)

## Plot sub-meter 2 with autoplot - add labels, color
autoplot(tsSM2_070809weekly, colour = 'orange', xlab = "Time", ylab = "Watt Hours", main = "Sub-meter 2")

## Plot sub-meter 2 with plot.ts
plot.ts(tsSM2_070809weekly)
##PROJECT:IoT Analytics Visualize and Analyze Energy Data
##NAME:Francesca Prata
##SCRIPT:Forecasting average energy consumption 
##DATE:19-02-2019
##VERSION:2

##SUBMETER 3
## Apply time series linear regression to the average usage of sub-meter 3 object and use summary to obtain R2 and RMSE from the model you built
tsSM3_070809weeklyAVG2 <- na.omit(tsSM3_070809weeklyAVG)
is.na(tsSM3_070809weeklyAVG)
fitSM3AVG <- tslm(tsSM3_070809weeklyAVG2 ~ trend + season) 
summary(fitSM3AVG) 

## Create the forecast for average usage of sub-meter 3. Forecast ahead 20 time periods 
forecastfitSM3AVG <- forecast(fitSM3AVG, 
                              h=20)
## Plot the forecast for sub-meter 3. 
plot(forecastfitSM3AVG)

## Create average usage of sub-meter 3 forecast with confidence levels 80 and 90
forecastfitSM3AVGc <- forecast(fitSM3AVG, 
                               h=20, 
                               level=c(80,90))

## Plot average usage of sub-meter 3 forecast, limit y and add labels
plot(forecastfitSM3AVGc, 
     ylim = c(0, 20), 
     ylab= "Average Watt-Hours", 
     xlab="Time")


##SUBMETER 1
## Apply time series linear regression to the sub-meter 1 ts object and use summary to obtain R2 and RMSE from the model you built
fitSM1AVG <- tslm(tsSM1_070809weeklyAVG ~ trend + season) 
summary(fitSM1AVG)

## Create the forecast for sub-meter 1. Forecast ahead 20 time periods 
forecastfitSM1AVG <- forecast(fitSM1AVG, 
                              h=20)
## Plot the forecast for sub-meter 1. 
plot(forecastfitSM1AVG)

## Create sub-meter 1 forecast with confidence levels 80 and 90
forecastfitSM1AVGc <- forecast(fitSM1AVG, 
                               h=20, 
                               level=c(80,90))

## Plot sub-meter 1 forecast, limit y and add labels
plot(forecastfitSM1AVGc, 
     ylim = c(0, 20), 
     ylab= "Watt-Hours", xlab="Time")

##SUBMETER 2
## Apply time series linear regression to the sub-meter 2 ts object and use summary to obtain R2 and RMSE from the model you built
fitSM2AVG <- tslm(tsSM2_070809weeklyAVG ~ trend + season) 
summary(fitSM2AVG)

## Create the forecast for sub-meter 2. Forecast ahead 20 time periods 
forecastfitSM2AVG <- forecast(fitSM2AVG, 
                              h=20)

## Plot the forecast for sub-meter 2. 
plot(forecastfitSM2AVG)

## Create sub-meter 2 forecast with confidence levels 80 and 90
forecastfitSM2AVGc <- forecast(fitSM2AVG, 
                               h=20, 
                              level=c(80,90))

## Plot sub-meter 2 forecast, limit y and add labels
plot(forecastfitSM2AVGc, 
     ylim = c(0, 20), 
     ylab= "Watt-Hours", 
     xlab="Time")

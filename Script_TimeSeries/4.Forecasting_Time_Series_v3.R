##PROJECT:IoT Analytics Visualize and Analyze Energy Data
##NAME:Francesca Prata
##SCRIPT:Forecasting average energy consumption 
##DATE:21-02-2019
##VERSION:3

##////////////////////////SUBMETER 3/////////////////////##
## Apply time series linear regression to the average usage of sub-meter 3 object and use summary to obtain R2 and RMSE from the model you built
fitSM3AVG <- tslm(tsSM3_weeklyAVG ~ trend + season) 
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

##////////////////////////SUBMETER 1/////////////////////##
## Apply time series linear regression to the average usage of sub-meter 1 object and use summary to obtain R2 and RMSE from the model you built
fitSM1AVG <- tslm(tsSM1_weeklyAVG ~ trend + season) 
summary(fitSM1AVG) 

## Create the forecast for average usage of sub-meter 1. Forecast ahead 20 time periods 
forecastfitSM1AVG <- forecast(fitSM1AVG, 
                              h=20)

## Plot the forecast for sub-meter 1. 
plot(forecastfitSM1AVG)

## Create average usage of sub-meter 1 forecast with confidence levels 80 and 90
forecastfitSM1AVGc <- forecast(fitSM1AVG, 
                               h=20, 
                               level=c(80,90))

## Plot average usage of sub-meter 1 forecast, limit y and add labels
plot(forecastfitSM1AVGc, 
     ylim = c(0, 20), 
     ylab= "Average Watt-Hours", 
     xlab="Time")

##////////////////////////SUBMETER 2/////////////////////##
## Apply time series linear regression to the average usage of sub-meter 2 object and use summary to obtain R2 and RMSE from the model you built
fitSM2AVG <- tslm(tsSM2_weeklyAVG ~ trend + season) 
summary(fitSM2AVG) 

## Create the forecast for average usage of sub-meter 2. Forecast ahead 20 time periods 
forecastfitSM2AVG <- forecast(fitSM2AVG, 
                              h=20)

## Plot the forecast for sub-meter 2. 
plot(forecastfitSM2AVG)

## Create average usage of sub-meter 2 forecast with confidence levels 80 and 90
forecastfitSM2AVGc <- forecast(fitSM2AVG, 
                               h=20, 
                               level=c(80,90))

## Plot average usage of sub-meter 2 forecast, limit y and add labels
plot(forecastfitSM2AVGc, 
     ylim = c(0, 20), 
     ylab= "Average Watt-Hours", 
     xlab="Time")

##////////////////////////ACTIVE ENERGY/////////////////////##
## Apply time series linear regression to the average usage of Active energy object and use summary to obtain R2 and RMSE from the model you built
fitSM4AVG <- tslm(tsSM4_weeklyAVG ~ trend + season) 
summary(fitSM4AVG) 

## Create the forecast for average usage of Active energy. Forecast ahead 20 time periods 
forecastfitSM4AVG <- forecast(fitSM4AVG, 
                              h=20)

## Plot the forecast for Active energy. 
plot(forecastfitSM4AVG)

## Create average usage of Active energy forecast with confidence levels 80 and 90
forecastfitSM4AVGc <- forecast(fitSM4AVG, 
                               h=20, 
                               level=c(80,90))

## Plot average usage of Active energy forecast, limit y and add labels
plot(forecastfitSM4AVGc, 
     ylim = c(0, 30), 
     ylab= "Average Watt-Hours", 
     xlab="Time")
##////////////////////////GLOBAL ACTIVE ENERGY/////////////////////##
## Apply time series linear regression to the average usage of global active energy
##object and use summary to obtain R2 and RMSE from the model you built
fitGAPAVG <- tslm(tsGAP_weeklyAVG ~ trend + season) 
summary(fitGAPAVG) 

## Create the forecast for average usage of global active energy. Forecast ahead 20 time periods 
forecastfitGAPAVG <- forecast(fitGAPAVG, 
                              h=20)

## Plot the forecast for global active energy. 
plot(forecastfitGAPAVG)

## Create average usage of global active energy forecast with confidence levels 80 and 90
forecastfitGAPAVGc <- forecast(fitGAPAVG, 
                               h=20, 
                               level=c(80,90))

## Plot average usage of global active energy forecast, limit y and add labels
plot(forecastfitGAPAVGc, 
     ylim = c(0, 40), 
     ylab= "Average Watt-Hours", 
     xlab="Time")

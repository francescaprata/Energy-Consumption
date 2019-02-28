##PROJECT:IoT Analytics Visualize and Analyze Energy Data
##NAME:Francesca Prata
##SCRIPT:Forecasting a time series -- LOOK AT THIS AGAIN 
##DATE:19-02-2019
##VERSION:1

##SUBMETER 3
## Apply time series linear regression to the sub-meter 3 ts object and use summary to obtain R2 and RMSE from the model you built
fitSM3TOTAL <- tslm(tsSM3_070809weeklyTOTAL ~ trend + season) 
summary(fitSM3TOTAL)

## Create the forecast for sub-meter 3. Forecast ahead 20 time periods 
forecastfitSM3TOTAL <- forecast(fitSM3TOTAL, 
                                h=100)
## Plot the forecast for sub-meter 3. 
plot(forecastfitSM3TOTAL)

## Create sub-meter 3 forecast with confidence levels 80 and 90
forecastfitSM3TOTALc <- forecast(fitSM3TOTAL, 
                                 h=100, 
                                 level=c(80,90))

## Plot sub-meter 3 forecast, limit y and add labels
plot(forecastfitSM3TOTALc, 
     ylim = c(0, 200), 
     ylab= "Watt-Hours", 
     xlab="Time")


##SUBMETER 1
## Apply time series linear regression to the sub-meter 1 ts object and use summary to obtain R2 and RMSE from the model you built
fitSM1TOTAL <- tslm(tsSM1_070809weeklyTOTAL ~ trend + season) 
summary(fitSM1TOTAL)

## Create the forecast for sub-meter 1. Forecast ahead 20 time periods 
forecastfitSM1TOTAL <- forecast(fitSM1TOTAL, h=100)
## Plot the forecast for sub-meter 1. 
plot(forecastfitSM1TOTAL)

## Create sub-meter 1 forecast with confidence levels 80 and 90
forecastfitSM1TOTALc <- forecast(fitSM1TOTAL, 
                                 h=20, 
                                 level=c(80,90))

## Plot sub-meter 1 forecast, limit y and add labels
plot(forecastfitSM1TOTALc, 
     ylim = c(0, 20), 
     ylab= "Watt-Hours",
     xlab="Time")

##SUBMETER 2
## Apply time series linear regression to the sub-meter 2 ts object and use summary to obtain R2 and RMSE from the model you built
fitSM2TOTAL <- tslm(tsSM2_070809weeklyTOTAL ~ trend + season) 
summary(fitSM2TOTAL)

## Create the forecast for sub-meter 2. Forecast ahead 20 time periods 
forecastfitSM2TOTAL <- forecast(fitSM2TOTAL, h=20)
## Plot the forecast for sub-meter 2. 
plot(forecastfitSM2TOTAL)

## Create sub-meter 2 forecast with confidence levels 80 and 90
forecastfitSM2TOTALc <- forecast(fitSM2TOTAL, 
                                 h=20, 
                                 level=c(80,90))

## Plot sub-meter 2 forecast, limit y and add labels
plot(forecastfitSM2TOTALc, ylim = c(0, 20), ylab= "Watt-Hours", xlab="Time")

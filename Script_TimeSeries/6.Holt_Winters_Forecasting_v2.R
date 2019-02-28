##PROJECT:IoT Analytics Visualize and Analyze Energy Data
##NAME:Francesca Prata
##SCRIPT:Holt-Winters Forecasting with average 
##DATE:19-02-2019
##VERSION:2

##/////////////////////////SUBMETER 3///////////////////////////////##
## Seasonal adjusting sub-meter 3 by subtracting the seasonal component & plot
tsSM3_AdjustedAVG <- tsSM3_weeklyAVG - componentsSM3weeklyAVG$seasonal
autoplot(tsSM3_AdjustedAVG)

## Test Seasonal Adjustment by running Decompose again. Note the very, very small scale for Seasonal
plot(decompose(tsSM3_AdjustedAVG))

## Holt Winters Exponential Smoothing & Plot
tsSM3_HWAVG <- HoltWinters(tsSM3_AdjustedAVG, 
                              beta=FALSE, 
                              gamma=FALSE)

plot(tsSM3_HWAVG, 
     ylim = c(0, 25))

## HoltWinters forecast & plot
tsSM3_HWAVGfor <- forecast(tsSM3_HWAVG, 
                                 h=25)

plot(tsSM3_HWAVGfor, 
     ylim = c(0, 20), 
     ylab= "Average Watt-Hours", 
     xlab="Time - Sub-meter 3")


#////////////////////look at it again///////////////////////////#
## Forecast HoltWinters with diminished confidence levels
tsSM3_HWforAVGC <- forecast(tsSM3_HWAVG, 
                                  h=25, 
                                  level=c(10,25))

## Plot only the forecasted area
plot(tsSM3_HWforAVGC$mean, 
     ylim = c(0, 20), 
     ylab= "Average Watt-Hours", 
     xlab="Time - Sub-meter 3", 
     start(2010))

##/////////////////////////SUBMETER 1///////////////////////////////##
## Seasonal adjusting sub-meter 1 by subtracting the seasonal component & plot
tsSM1_Adjusted <- tsSM1_weeklyAVG - componentsSM1weeklyAVG$seasonal
autoplot(tsSM1_Adjusted)

## Test Seasonal Adjustment by running Decompose again. Note the very, very small scale for Seasonal
plot(decompose(tsSM1_Adjusted))

## Holt Winters Exponential Smoothing & Plot
tsSM1_HW <- HoltWinters(tsSM1_Adjusted, 
                              beta=FALSE, 
                              gamma=FALSE)

plot(tsSM1_HW, 
     ylim = c(0, 25))

## HoltWinters forecast & plot
tsSM1_HWfor <- forecast(tsSM1_HW, 
                        h=25)

plot(tsSM1_HWfor, 
     ylim = c(0, 20), 
     ylab= "Average Watt-Hours", 
     xlab="Time - Sub-meter 1")

## Forecast HoltWinters with diminished confidence levels
tsSM1_HWforC <- forecast(tsSM1_HW, h=25, 
                         level=c(10,25))

## Plot only the forecasted area
plot(tsSM1_HWforC, 
     ylim = c(0, 20), 
     ylab= "Average Watt-Hours", 
     xlab="Time - Sub-meter 1", 
     start(2010))

##///////////////////////////SUBMETER 2///////////////////////////##
## Seasonal adjusting sub-meter 2 by subtracting the seasonal component & plot
tsSM2_Adjusted <- tsSM2_weeklyAVG - componentsSM2weeklyAVG$seasonal
autoplot(tsSM2_Adjusted)

## Test Seasonal Adjustment by running Decompose again. Note the very, very small scale for Seasonal
plot(decompose(tsSM2_Adjusted))

## Holt Winters Exponential Smoothing & Plot
tsSM2_HW <- HoltWinters(tsSM2_Adjusted, 
                              beta=FALSE, 
                              gamma=FALSE)
plot(tsSM2_HW, 
     ylim = c(0, 25))

## HoltWinters forecast & plot
tsSM2_HWfor <- forecast(tsSM2_HW, 
                        h=25)
plot(tsSM2_HWfor, 
     ylim = c(0, 20), 
     ylab= "Average Watt-Hours", 
     xlab="Time - Sub-meter 2")


## Forecast HoltWinters with diminished confidence levels
tsSM2_HWforC <- forecast(tsSM2_HW, 
                               h=25, 
                               level=c(10,25))

## Plot only the forecasted area
plot(tsSM2_HWforC, 
     ylim = c(0, 20), 
     ylab= "Average Watt-Hours", 
     xlab="Time - Sub-meter 2", 
     start(2010))

##/////////////////////////ACTIVE ENERGY///////////////////////////////##
## Seasonal adjusting Active energy by subtracting the seasonal component & plot
tsSM4_AdjustedAVG <- tsSM4_weeklyAVG - componentsSM4weeklyAVG$seasonal
autoplot(tsSM4_AdjustedAVG)

## Test Seasonal Adjustment by running Decompose again. Note the very, very small scale for Seasonal
plot(decompose(tsSM4_AdjustedAVG))

## Holt Winters Exponential Smoothing & Plot 
tsSM4_HWAVG <- HoltWinters(tsSM4_AdjustedAVG, 
                                 beta=FALSE, 
                                 gamma=FALSE)

plot(tsSM4_HWAVG, ylim = c(0, 25))

## HoltWinters forecast & plot
tsSM4_HWAVGfor <- forecast(tsSM4_HWAVG, h=25)

plot(tsSM4_HWAVGfor, 
     ylim = c(0, 20), 
     ylab= "Average Watt-Hours", 
     xlab="Time - Active energy")


## Forecast HoltWinters with diminished confidence levels
tsSM4_HWforAVGC <- forecast(tsSM4_HWAVG, 
                                  h=25, 
                                  level=c(10,25))

## Plot only the forecasted area
plot(tsSM4_HWforAVGC$mean, 
     ylim = c(0, 25), 
     ylab= "Average Watt-Hours", 
     xlab="Time - Active energy", 
     start(2010))

##/////////////////////////GLOBAL ACTIVE ENERGY///////////////////////////////##
## Seasonal adjusting Active energy by subtracting the seasonal component & plot
tsGAP_AdjustedAVG <- tsGAP_weeklyAVG - componentsGAPweeklyAVG$seasonal
autoplot(tsGAP_AdjustedAVG)

## Test Seasonal Adjustment by running Decompose again. Note the very, very small scale for Seasonal
plot(decompose(tsGAP_AdjustedAVG))

## Holt Winters Exponential Smoothing & Plot 
tsGAP_HWAVG <- HoltWinters(tsGAP_AdjustedAVG, 
                           beta=FALSE, 
                           gamma=FALSE)

plot(tsGAP_HWAVG, ylim = c(0, 25))

## HoltWinters forecast & plot
tsGAP_HWAVGfor <- forecast(tsSM4_HWAVG, h=25)

plot(tsGAP_HWAVGfor, 
     ylim = c(0, 20), 
     ylab= "Average Watt-Hours", 
     xlab="Time - Active energy")


## Forecast HoltWinters with diminished confidence levels
tsGAP_HWforAVGC <- forecast(tsGAP_HWAVG, 
                            h=25, 
                            level=c(10,25))

## Plot only the forecasted area
plot(tsGAP_HWforAVGC$mean, 
     ylim = c(0, 25), 
     ylab= "Average Watt-Hours", 
     xlab="Time - Active energy", 
     start(2010))


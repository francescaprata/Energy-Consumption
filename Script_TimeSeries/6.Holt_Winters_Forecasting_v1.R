##PROJECT:IoT Analytics Visualize and Analyze Energy Data
##NAME:Francesca Prata
##SCRIPT:Holt-Winters Forecasting 
##DATE:19-02-2019
##VERSION:1

##SUBMETER 3##
## Seasonal adjusting sub-meter 3 by subtracting the seasonal component & plot
tsSM3_070809Adjusted <- tsSM3_070809weekly - components070809SM3weekly$seasonal
autoplot(tsSM3_070809Adjusted)

## Test Seasonal Adjustment by running Decompose again. Note the very, very small scale for Seasonal
plot(decompose(tsSM3_070809Adjusted))

## Holt Winters Exponential Smoothing & Plot
tsSM3_HW070809 <- HoltWinters(tsSM3_070809Adjusted, 
                              beta=FALSE, 
                              gamma=FALSE)
plot(tsSM3_HW070809, ylim = c(0, 25))

## HoltWinters forecast & plot
tsSM3_HW070809for <- forecast(tsSM3_HW070809, h=25)
plot(tsSM3_HW070809for, 
     ylim = c(0, 20), 
     ylab= "Watt-Hours", 
     xlab="Time - Sub-meter 3")

## Forecast HoltWinters with diminished confidence levels
tsSM3_HW070809forC <- forecast(tsSM3_HW070809, h=25, level=c(10,25))
## Plot only the forecasted area
plot(tsSM3_HW070809forC, 
     ylim = c(0, 20), 
     ylab= "Watt-Hours", 
     xlab="Time - Sub-meter 3", 
     start(2010))

##SUBMETER 1##
## Seasonal adjusting sub-meter 3 by subtracting the seasonal component & plot
tsSM1_070809Adjusted <- tsSM1_070809weekly - components070809SM1weekly$seasonal
autoplot(tsSM1_070809Adjusted)

## Test Seasonal Adjustment by running Decompose again. Note the very, very small scale for Seasonal
plot(decompose(tsSM1_070809Adjusted))

## Holt Winters Exponential Smoothing & Plot
tsSM1_HW070809 <- HoltWinters(tsSM1_070809Adjusted, 
                              beta=FALSE, 
                              gamma=FALSE)
plot(tsSM1_HW070809, ylim = c(0, 25))

## HoltWinters forecast & plot
tsSM1_HW070809for <- forecast(tsSM1_HW070809, h=25)
plot(tsSM1_HW070809for, 
     ylim = c(0, 20), 
     ylab= "Watt-Hours", 
     xlab="Time - Sub-meter 1")

## Forecast HoltWinters with diminished confidence levels
tsSM1_HW070809forC <- forecast(tsSM1_HW070809, h=25, level=c(10,25))
## Plot only the forecasted area
plot(tsSM1_HW070809forC, 
     ylim = c(0, 20), 
     ylab= "Watt-Hours", 
     xlab="Time - Sub-meter 1", 
     start(2010))

##SUBMETER 2##
## Seasonal adjusting sub-meter 3 by subtracting the seasonal component & plot
tsSM2_070809Adjusted <- tsSM2_070809weekly - components070809SM2weekly$seasonal
autoplot(tsSM2_070809Adjusted)

## Test Seasonal Adjustment by running Decompose again. Note the very, very small scale for Seasonal
plot(decompose(tsSM2_070809Adjusted))

## Holt Winters Exponential Smoothing & Plot
tsSM2_HW070809 <- HoltWinters(tsSM2_070809Adjusted, 
                              beta=FALSE, 
                              gamma=FALSE)
plot(tsSM2_HW070809, ylim = c(0, 25))

## HoltWinters forecast & plot
tsSM2_HW070809for <- forecast(tsSM2_HW070809, h=25)
plot(tsSM2_HW070809for, 
     ylim = c(0, 20), 
     ylab= "Watt-Hours", 
     xlab="Time - Sub-meter 2")

## Forecast HoltWinters with diminished confidence levels
tsSM2_HW070809forC <- forecast(tsSM2_HW070809, h=25, level=c(10,25))
## Plot only the forecasted area
plot(tsSM2_HW070809forC, 
     ylim = c(0, 20), 
     ylab= "Watt-Hours", 
     xlab="Time - Sub-meter 2", 
     start(2010))

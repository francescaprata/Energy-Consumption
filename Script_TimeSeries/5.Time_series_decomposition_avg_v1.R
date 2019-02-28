##PROJECT:IoT Analytics Visualize and Analyze Energy Data
##NAME:Francesca Prata
##SCRIPT:Decomposing a time series AVERAGES
##DATE:19-02-2019
##VERSION:1

#When considering the averages per day 
##//////////////////////SUBMETER 3/////////////////////////##
## Decompose Sub-meter 3 into trend, seasonal and remainder
componentsSM3weeklyAVG <- decompose(tsSM3_weeklyAVG)
## Plot decomposed sub-meter 3 
plot(componentsSM3weeklyAVG) 
## Check summary statistics for decomposed sub-meter 3 
summary(componentsSM3weeklyAVG)


##////////////////////SUBMETER 1//////////////////////////##
## Decompose Sub-meter 1 into trend, seasonal and remainder
componentsSM1weeklyAVG <- decompose(tsSM1_weeklyAVG)
## Plot decomposed sub-meter 1
plot(componentsSM1weeklyAVG) 
## Check summary statistics for decomposed sub-meter 1 
summary(componentsSM1weeklyAVG)

##////////////////////SUBMETER 2//////////////////////////##
## Decompose Sub-meter 2 into trend, seasonal and remainder
componentsSM2weeklyAVG <- decompose(tsSM2_weeklyAVG)
## Plot decomposed sub-meter 2 
plot(componentsSM2weeklyAVG) 
## Check summary statistics for decomposed sub-meter 2 
summary(componentsSM2weeklyAVG)

##////////////////////ACTIVE ENERGY//////////////////////////##
## Decompose Active energy into trend, seasonal and remainder
componentsSM4weeklyAVG <- decompose(tsSM4_weeklyAVG)
## Plot decomposed Active energy 
plot(componentsSM4weeklyAVG) 
## Check summary statistics for decomposed Active energy 
summary(componentsSM4weeklyAVG)

##////////////////////GLOBAL ACTIVE ENERGY//////////////////////////##
## Decompose Global active energy into trend, seasonal and remainder
componentsGAPweeklyAVG <- decompose(tsGAP_weeklyAVG)
## Plot decomposed Global active energy 
plot(componentsGAPweeklyAVG) 
## Check summary statistics for decomposed Global active energy 
summary(componentsGAPweeklyAVG)

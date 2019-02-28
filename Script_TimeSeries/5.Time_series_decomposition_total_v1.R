##PROJECT:IoT Analytics Visualize and Analyze Energy Data
##NAME:Francesca Prata
##SCRIPT:Decomposing a time series TOTAL
##DATE:19-02-2019
##VERSION:1

#When considering the total 
##//////////////////////SUBMETER 3/////////////////////////##
## Decompose Sub-meter 3 into trend, seasonal and remainder
components070809SM3weeklyTOTAL <- decompose(tsSM3_070809weeklyTOTAL)
## Plot decomposed sub-meter 3 
plot(components070809SM3weeklyTOTAL) 
## Check summary statistics for decomposed sub-meter 3 
summary(components070809SM3weeklyTOTAL)


##////////////////////SUBMETER 1//////////////////////////##
## Decompose Sub-meter 1 into trend, seasonal and remainder
components070809SM1weeklyTOTAL <- decompose(tsSM1_070809weeklyTOTAL)
## Plot decomposed sub-meter 1
plot(components070809SM1weeklyTOTAL) 
## Check summary statistics for decomposed sub-meter 1 
summary(components070809SM1weeklyTOTAL)

##////////////////////SUBMETER 2//////////////////////////##
## Decompose Sub-meter 2 into trend, seasonal and remainder
components070809SM2weeklyTOTAL <- decompose(tsSM2_070809weeklyTOTAL)
## Plot decomposed sub-meter 2 
plot(components070809SM2weeklyTOTAL) 
## Check summary statistics for decomposed sub-meter 2 
summary(components070809SM2weeklyTOTAL)

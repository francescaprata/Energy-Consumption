##PROJECT:IoT Analytics Domain Research and Exploratory Data Analysis 
##NAME:Francesca Prata
##SCRIPT:Data visualization with total data
##DATE:14-02-2019
##VERSION:4

#////////////////INDIVIDUAL ENERGY MEASURES THROUGH THE YEARS/////////////#
##Submeter 1
ggplot(yrs_2007to2009TOTAL) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  ggtitle("Yearly consumption submeter 1") +
  xlab ("Years") +  
  ylab("Watt hour")

##Submeter 2
ggplot(yrs_2007to2009TOTAL) +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "blue") +
  ggtitle("Yearly consumption submeter 2") +
  xlab ("Years") +
  ylab("Watt hour")

##Submeter 3
ggplot(yrs_2007to2009TOTAL) +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "red") +
  ggtitle("Yearly consumption submeter 3") +
  xlab ("Years") +
  ylab("Watt hour")

##Global active power
ggplot(yrs_2007to2009TOTAL) +
  geom_line(aes(x=DateTime, y=Global_active_power), color = "orange") +
  ggtitle("Yearly consumption submeter 3") +
  xlab ("Years") +
  ylab("Watt hour")

ggplot(Y2007Total) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "blue") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "red") + 
  geom_line(aes(x=DateTime, y=Global_active_power), color = "orange") +
  ggtitle("Total Consumption in 2007") +
  xlab ("Months") +
  ylab("Watt hour")

#################################################################################
# PROJECT:IoT Analytics Domain Research and Exploratory Data Analysis           #
# NAME:Francesca Prata                                                          #    
# SCRIPT:Preprocessing - Creating additional subsets and a new energy attribute #
# DATE:14-02-2019                                                               #
# VERSION:4                                                                     #
#################################################################################

#Retrieve previous data frame 
source(file = )

#######################
#Creating new variable#
#######################

#Energy not currently measured by the submeters (in watt hour)
Yrs2007_2009 <- Yrs2007_2009 %>%
  mutate(Sub_metering_4 = Global_active_power*(1000/60) -
           Sub_metering_1 -
           Sub_metering_2 -
           Sub_metering_3) 

###################
##Creating subsets#
###################

#Different day times
Morning <- subset(Yrs2007_2009, 
                  Hour == 6:11)
Afternoon <- subset(Yrs2007_2009, 
                    Hour == 12:17)
Evening <- subset(Yrs2007_2009, 
                  Hour == 18:23)
Night <- subset(Yrs2007_2009, 
                Hour == 0:5)

#Week days  
Weekdays <- subset(Yrs2007_2009, 
                   Weekdays != "Saturday" & Weekdays != "Sunday")

#Weekends 
Weekends <- subset(Yrs2007_2009, 
                   Weekdays != "Monday" &  Weekdays != "Tuesday" & Weekdays != "Wednesday"
                   & Weekdays != "Thursday" & Weekdays != "Friday")

#Seasons
Winter <- subset(Yrs2007_2009, 
                 Quarter == 1) 
Spring <- subset(Yrs2007_2009, 
                 Quarter == 2) 
Summer <- subset(Yrs2007_2009, 
                 Quarter == 3)
Autumn <- subset(Yrs2007_2009, 
                 Quarter == 4)

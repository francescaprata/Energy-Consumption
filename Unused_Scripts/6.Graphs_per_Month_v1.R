##PROJECT:IoT Analytics Domain Research and Exploratory Data Analysis 
##NAME:Francesca Prata
##SCRIPT:Data visualization per month 
##DATE:13-02-2019
##VERSION:1

##creation of monthly subsets
Jan2007 <- subset(Y2007,
                  month == 1)
Feb2007 <- subset(Y2007,
                  month == 2)
March2007 <- subset(Y2007,
                    month == 3)
April2007 <- subset(Y2007,
                    month == 4)
May2007 <- subset(Y2007,
                  month == 5)
June2007 <- subset(Y2007,
                   month == 6)
July2007 <- subset(Y2007,
                   month == 7)
Aug2007 <- subset(Y2007,
                  month == 8)
Sep2007 <- subset(Y2007,
                  month == 9)
Oct2007 <- subset(Y2007,
                 month == 10)
Nov2007 <- subset(Y2007,
                  month == 11)
Dec2007 <- subset(Y2007,
                  month == 12)

Jan2008 <- subset(Y2008,
                  month == 1)
Feb2008 <- subset(Y2008,
                  month == 2)
March2008 <- subset(Y2008,
                    month == 3)
April2008 <- subset(Y2008,
                    month == 4)
May2008 <- subset(Y2008,
                  month == 5)
June2008 <- subset(Y2008,
                   month == 6)
July2008 <- subset(Y2008,
                   month == 7)
Aug2008 <- subset(Y2008,
               month == 8)
Sep2008 <- subset(Y2008,
                  month == 9)
Oct2008 <- subset(Y2008,
                  month == 10)
Nov2008 <- subset(Y2008,
                  month == 11)
Dec2008 <- subset(Y2008,
                  month == 12)

Jan2009 <- subset(Y2009,
                  month == 1)
Feb2009 <- subset(Y2009,
                  month == 2)
March2009 <- subset(Y2009,
                    month == 3)
April2009 <- subset(Y2009,
                    month == 4)
May2009 <- subset(Y2009,
                  month == 5)
June2009 <- subset(Y2009,
                   month == 6)
July2009 <- subset(Y2009,
                   month == 7)
Aug2009 <- subset(Y2009,
                  month == 8)
Sep2009 <- subset(Y2009,
                  month == 9)
Oct2009 <- subset(Y2009,
                  month == 10)
Nov2009 <- subset(Y2009,
                  month == 11)
Dec2009 <- subset(Y2009,
                  month == 12)

##The plots

#//// January 2007-2009
ggplot(Jan2007) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "red") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "blue") +
  ggtitle("Jan 2007") +
  ylab("Watt hour") +
  xlab("Date")

ggplot(Jan2008) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "red") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "blue") +
  ggtitle("Jan 2008") +
  ylab("Watt hour") +
  xlab("Date")

ggplot(Jan2009) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "red") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "blue") +
  ggtitle("Jan 2009") +
  ylab("Watt hour") +
  xlab("Date")

#//// February 2007-2009
ggplot(Feb2007) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "red") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "blue") +
  ggtitle("Feb 2007") +
  ylab("Watt hour") +
  xlab("Date")

ggplot(Feb2008) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "red") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "blue") +
  ggtitle("Feb 2008") +
  ylab("Watt hour") +
  xlab("Date")

ggplot(Feb2009) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "red") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "blue") +
  ggtitle("Feb 2009") +
  ylab("Watt hour") +
  xlab("Date")

#//// March 2007-2009
ggplot(March2007) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "red") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "blue") +
  ggtitle("March 2007") +
  ylab("Watt hour") +
  xlab("Date")

ggplot(March2008) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "red") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "blue") +
  ggtitle("March 2008") +
  ylab("Watt hour") +
  xlab("Date")

ggplot(March2009) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "red") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "blue") +
  ggtitle("March 2009") +
  ylab("Watt hour") +
  xlab("Date")

#//// April 2007-2009
ggplot(April2007) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "red") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "blue") +
  ggtitle("April 2007") +
  ylab("Watt hour") +
  xlab("Date")

ggplot(April2008) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "red") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "blue") +
  ggtitle("April 2008") +
  ylab("Watt hour") +
  xlab("Date")

ggplot(April2009) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "red") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "blue") +
  ggtitle("April 2009") +
  ylab("Watt hour") +
  xlab("Date")

#//// May 2007-2009
ggplot(May2007) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "red") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "blue") +
  ggtitle("May 2007") +
  ylab("Watt hour") +
  xlab("Date")

ggplot(May2008) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "red") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "blue") +
  ggtitle("May 2008") +
  ylab("Watt hour") +
  xlab("Date")

ggplot(May2009) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "red") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "blue") +
  ggtitle("May 2009") +
  ylab("Watt hour") +
  xlab("Date")

#//// June 2007-2009
ggplot(June2007) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "red") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "blue") +
  ggtitle("June 2007") +
  ylab("Watt hour") +
  xlab("Date")

ggplot(June2008) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "red") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "blue") +
  ggtitle("June 2008") +
  ylab("Watt hour") +
  xlab("Date")

ggplot(June2009) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "red") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "blue") +
  ggtitle("June 2009") +
  ylab("Watt hour") +
  xlab("Date")

#//////////////////////////Interesting observation in June 13-15, 2009////////////#
June132009 <- June2009 %>%
  filter(day == 13)
         
##Plot
ggplot(June132009) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "red") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "blue") +
  ggtitle("13 June 2009 consumption") +
  ylab("Watt hour") +
  xlab("Time of day")

June142009 <- June2009 %>%
  filter(day == 14)

##Plot
ggplot(June142009) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "red") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "blue") +
  ggtitle("14 June 2009 consumption") +
  ylab("Watt hour") +
  xlab("Time of day")

#Apparently for this day there were no observations

June152009 <- June2009 %>%
  filter(day == 15)

##Plot
ggplot(June152009) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "red") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "blue") +
  ggtitle("15 June 2009 consumption") +
  ylab("Watt hour") +
  xlab("Time of day")

#//////////////////////////////////////////////////////////////////////////////#


#//// July 2007-2009
ggplot(July2007) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "red") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "blue") +
  ggtitle("July 2007") +
  ylab("Watt hour") +
  xlab("Date")

ggplot(July2008) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "red") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "blue") +
  ggtitle("July 2008") +
  ylab("Watt hour") +
  xlab("Date")

ggplot(July2009) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "red") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "blue") +
  ggtitle("July 2009") +
  ylab("Watt hour") +
  xlab("Date")

#//// August 2007-2009
ggplot(Aug2007) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "red") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "blue") +
  ggtitle("Aug 2007") +
  ylab("Watt hour") +
  xlab("Date")

ggplot(Aug2008) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "red") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "blue") +
  ggtitle("Aug 2008") +
  ylab("Watt hour") +
  xlab("Date")

ggplot(Aug2009) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "red") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "blue") +
  ggtitle("Aug 2009") +
  ylab("Watt hour") +
  xlab("Date")

#//// September 2007-2009
ggplot(Sep2007) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "red") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "blue") +
  ggtitle("Sep 2007") +
  ylab("Watt hour") +
  xlab("Date")

ggplot(Sep2008) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "red") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "blue") +
  ggtitle("Sep 2008") +
  ylab("Watt hour") +
  xlab("Date")

ggplot(Sep2009) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "red") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "blue") +
  ggtitle("Sep 2009") +
  ylab("Watt hour") +
  xlab("Date")

#//// October 2007-2009
ggplot(Oct2007) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "red") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "blue") +
  ggtitle("Oct 2007") +
  ylab("Watt hour") +
  xlab("Date")

ggplot(Oct2008) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "red") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "blue") +
  ggtitle("Oct 2008") +
  ylab("Watt hour") +
  xlab("Date")

ggplot(Oct2009) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "red") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "blue") +
  ggtitle("Oct 2009") +
  ylab("Watt hour") +
  xlab("Date")

#//// November 2007-2009
ggplot(Nov2007) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "red") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "blue") +
  ggtitle("Nov 2007") +
  ylab("Watt hour") +
  xlab("Date")

ggplot(Nov2008) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "red") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "blue") +
  ggtitle("Nov 2008") +
  ylab("Watt hour") +
  xlab("Date")

ggplot(Nov2009) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "red") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "blue") +
  ggtitle("Nov 2009") +
  ylab("Watt hour") +
  xlab("Date")

#//// December 2007-2009
ggplot(Dec2007) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "red") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "blue") +
  ggtitle("Dec 2007") +
  ylab("Watt hour") +
  xlab("Date")

ggplot(Dec2008) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "red") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "blue") +
  ggtitle("Dec 2008") +
  ylab("Watt hour") +
  xlab("Date")

ggplot(Dec2009) +
  geom_line(aes(x=DateTime, y=Sub_metering_1), color = "green") +
  geom_line(aes(x=DateTime, y=Sub_metering_2), color = "red") +
  geom_line(aes(x=DateTime, y=Sub_metering_3), color = "blue") +
  ggtitle("Dec 2009") +
  ylab("Watt hour") +
  xlab("Date")
##PROJECT:IoT Analytics Domain Research and Exploratory Data Analysis 
##NAME:Francesca Prata
##SCRIPT:Exploring the database and creation of Primary Data Frame 
##DATE:11-02-2019
##VERSION:1

##Year 2006
str(yr_2006)
summary(yr_2006)
##Check the head and tail
head(yr_2006SELECT)
tail(yr_2006SELECT)

head(yr_2007SELECT)
tail(yr_2007SELECT)

head(yr_2008SELECT)
tail(yr_2008SELECT)

head(yr_2009SELECT)
tail(yr_2009SELECT)

head(yr_2010SELECT)
tail(yr_2010SELECT)


##Create Primary Data Frame
newDF <- bind_rows(yr_2007SELECT, yr_2008SELECT, yr_2009SELECT)


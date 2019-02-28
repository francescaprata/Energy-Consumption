##PROJECT:IoT Analytics Visualize and Analyze Energy Data
##NAME:Francesca Prata
##SCRIPT:Creating pie charts
##DATE:20-02-2019
##VERSION:1

##Usage of each submeter 2007-2010
totalConsump <- sum(Yrs2007_2010$GAP)
totalSub1 <- sum(Yrs2007_2010$Sub_metering_1)
totalSub2 <- sum(Yrs2007_2010$Sub_metering_2)
totalSub3 <- sum(Yrs2007_2010$Sub_metering_3)
totalSub4 <- sum(Yrs2007_2010$Active_energy)
#Create data for graph
xdf <- data.frame("Submeter_1" = c(0.06208991),
                  "Submeter_2" = c(0.07140047), 
                  "Submeter_3" = c(0.35729265), 
                  "Unknown" = c(0.50921697))

# Stacked Bar Plot with Colors and Legend
counts <- table(xdf$vs, mtcars$gear)
barplot(counts, main="Power usage distribution",
        xlab="Years", col=c(),
        legend = rownames(counts))

##Usage of each submeter 2007
totalConsump2007 <- Yrs2007_2010 %>%
  filter(Year == 2007) %>%
  summarise(totalConsump = sum(GAP))

totalSub1_2007 <- Yrs2007_2010 %>%
  filter(Year == 2007) %>%
  summarise(totalSub1 = sum(Sub_metering_1))

totalSub2_2007 <- Yrs2007_2010 %>%
  filter(Year == 2007) %>%
  summarise(totalSub2 = sum(Sub_metering_2))

totalSub3_2007 <- Yrs2007_2010 %>%
  filter(Year == 2007) %>%
  summarise(totalSub3 = sum(Sub_metering_3))

totalSub4_2007 <- Yrs2007_2010 %>%
  filter(Year == 2007) %>%
  summarise(totalSub4 = sum(Active_energy))
#Create data for graph
df2007 <- data.frame("Submeter_1" = c(totalSub1_2007/totalConsump2007),
                  "Submeter_2" = c(totalSub2_2007/totalConsump2007), 
                  "Submeter_3" = c(totalSub3_2007/totalConsump2007), 
                  "Unknown" = c(totalSub4_2007/totalConsump2007))
View(df2007)


##Usage of each submeter 2008
totalConsump2008 <- Yrs2007_2010 %>%
  filter(Year == 2008) %>%
  summarise(totalConsump = sum(GAP))

totalSub1_2008 <- Yrs2007_2010 %>%
  filter(Year == 2008) %>%
  summarise(totalSub1 = sum(Sub_metering_1))

totalSub2_2008 <- Yrs2007_2010 %>%
  filter(Year == 2008) %>%
  summarise(totalSub2 = sum(Sub_metering_2))

totalSub3_2008 <- Yrs2007_2010 %>%
  filter(Year == 2008) %>%
  summarise(totalSub3 = sum(Sub_metering_3))

totalSub4_2008 <- Yrs2007_2010 %>%
  filter(Year == 2008) %>%
  summarise(totalSub4 = sum(Active_energy))
#Create data for graph
df2008 <- data.frame("Submeter_1" = c(totalSub1_2008/totalConsump2008),
                     "Submeter_2" = c(totalSub2_2008/totalConsump2008), 
                     "Submeter_3" = c(totalSub3_2008/totalConsump2008), 
                     "Unknown" = c(totalSub4_2008/totalConsump2008))
View(df2008)


##Usage of each submeter 2009
totalConsump2009 <- Yrs2007_2010 %>%
  filter(Year == 2009) %>%
  summarise(totalConsump = sum(GAP))

totalSub1_2009 <- Yrs2007_2010 %>%
  filter(Year == 2009) %>%
  summarise(totalSub1 = sum(Sub_metering_1))

totalSub2_2009 <- Yrs2007_2010 %>%
  filter(Year == 2009) %>%
  summarise(totalSub2 = sum(Sub_metering_2))

totalSub3_2009 <- Yrs2007_2010 %>%
  filter(Year == 2009) %>%
  summarise(totalSub3 = sum(Sub_metering_3))

totalSub4_2009 <- Yrs2007_2010 %>%
  filter(Year == 2009) %>%
  summarise(totalSub4 = sum(Active_energy))
#Create data for graph
df2009 <- data.frame("Submeter_1" = c(totalSub1_2009/totalConsump2009),
                     "Submeter_2" = c(totalSub2_2009/totalConsump2009), 
                     "Submeter_3" = c(totalSub3_2009/totalConsump2009), 
                     "Unknown" = c(totalSub4_2009/totalConsump2009))
View(df2009)

##Usage of each submeter 2010
totalConsump2010 <- Yrs2007_2010 %>%
  filter(Year == 2010) %>%
  summarise(totalConsump = sum(GAP))

totalSub1_2010 <- Yrs2007_2010 %>%
  filter(Year == 2010) %>%
  summarise(totalSub1 = sum(Sub_metering_1))

totalSub2_2010 <- Yrs2007_2010 %>%
  filter(Year == 2010) %>%
  summarise(totalSub2 = sum(Sub_metering_2))

totalSub3_2010 <- Yrs2007_2010 %>%
  filter(Year == 2010) %>%
  summarise(totalSub3 = sum(Sub_metering_3))

totalSub4_2010 <- Yrs2007_2010 %>%
  filter(Year == 2010) %>%
  summarise(totalSub4 = sum(Active_energy))

#Create data for graph
df2010 <- data.frame("Submeter_1" = c(totalSub1_2010/totalConsump2010),
                     "Submeter_2" = c(totalSub2_2010/totalConsump2010), 
                     "Submeter_3" = c(totalSub3_2010/totalConsump2010),
                     "Unknown" = c(totalSub4_2010/totalConsump2010))
View(df2010)







pie(table(xdf))
#Give labels
labels <- c("Kitchen", "Laundry Room", "AC and Water Heater", "Unknown")
# Give the chart file a name.
png(file = "Total consumption 2007-2010")
# Plot the chart.
pie(xdf,labels)

# Barplot
bp<- ggplot(xdf, aes(x="", y=, fill=group))+
  geom_bar(width = 1, stat = "identity")
bp
pie <- bp + coord_polar("y", start = 0)
pie(xdf)

##EXAMPLE 
# Create data for the graph.
x <- c(21, 62, 10, 53)
labels <- c("Kitchen", "Laundry Room", "AC and Water Heater", "Unknown")

# Give the chart file a name.
png(file = "Total consumption 2007-2010")

# Plot the chart.
pie(x,labels)

# Save the file.
dev.off()
###########################################################
# PROJECT:IoT Analytics Visualize and Analyze Energy Data #
# NAME:Francesca Prata                                    #      
# SCRIPT:Exploring prophet                                #
# DATE:22-02-2019                                         #
# VERSION:1                                               #
###########################################################

####################################
#Setting up the dataset for Prophet#
####################################

Yrs2007_2010 <- bind_rows(yr_2007SELECT, yr_2008SELECT, yr_2009SELECT, yr_2010SELECT)
Yrs2007_2010 <- mutate(Yrs2007_2010, GAP = Global_active_power * (1000/60))
Yrs2007_2010 <- mutate(Yrs2007_2010, 
                       Active_energy = GAP - 
                         Sub_metering_1 - 
                         Sub_metering_2 - 
                         Sub_metering_3)

#Remove "Time" attributes
Yrs2007_2010$Time <- NULL

#Convert Date from POSIXlt to POSIXct  
Yrs2007_2010$Date <- as.POSIXct(Yrs2007_2010$Date, "%Y-%m-%d")
attr(Yrs2007_2010$Date, "tzone") <- "Europe/Paris"

##################
#Creating subsets#
##################

#Subset for Sub-meter 1
df_daily_Sub1 <- Yrs2007_2010 %>%
  group_by(Date) %>% 
  summarise(y = mean(Sub_metering_1))

#fine tuning data frame 
df_daily_Sub1 <- df_daily_Sub1 %>%
  select(ds = Date,
         y = y)

df_daily_Sub1$ds <- date(df_daily_Sub1$ds)

#Subset for Sub-meter 2
df_daily_Sub2 <- Yrs2007_2010 %>%
  group_by(Date) %>% 
  summarise(y = mean(Sub_metering_2))

#fine tuning data frame 
df_daily_Sub2 <- df_daily_Sub2 %>%
  select(ds = Date,
         y = y)

df_daily_Sub2$ds <- date(df_daily_Sub2$ds)

#Subset for Sub-meter 3
df_daily_Sub3 <- Yrs2007_2010 %>%
  group_by(Date) %>% 
  summarise(y = mean(Sub_metering_3))

#fine tuning data frame 
df_daily_Sub3 <- df_daily_Sub3 %>%
  select(ds = Date,
         y = y)

df_daily_Sub3$ds <- date(df_daily_Sub3$ds)

#Subset for Active energy
df_daily_AE <- Yrs2007_2010 %>%
  group_by(Date) %>% 
  summarise(y = mean(Active_energy))

#fine tuning data frame 
df_daily_AE <- df_daily_AE %>%
  select(ds = Date,
         y = y)

df_daily_AE$ds <- date(df_daily_AE$ds)

#Subset for Global active energy
df_daily_GAP <- Yrs2007_2010 %>%
  group_by(Date) %>% 
  summarise(y = mean(GAP))

#fine tuning data frame 
df_daily_GAP <- df_daily_GAP %>%
  select(ds = Date,
         y = y)

df_daily_GAP$ds <- date(df_daily_GAP$ds)

#############
#Forecasting#
#############

#Sub-meter 1
m <- prophet(df_daily_Sub1, daily.seasonality = TRUE)
future <- make_future_dataframe(m, periods = 730)
forecast <- predict(m, future)
plot(m, forecast)
dyplot.prophet(m, forecast)

#For individual components
prophet_plot_components(m, forecast)

#Submeter 2
m <- prophet(df_daily_Sub2, daily.seasonality = TRUE)
future <- make_future_dataframe(m, periods = 730)
forecast <- predict(m, future)
plot(m, forecast)
dyplot.prophet(m, forecast)

#For individual components
prophet_plot_components(m, forecast)

#Sub-meter 3
m <- prophet(df_daily_Sub3, daily.seasonality = TRUE)
future <- make_future_dataframe(m, periods = 730)
forecast <- predict(m, future)
plot(m, forecast)
dyplot.prophet(m, forecast)

#For individual components
prophet_plot_components(m, forecast)

#Active energy
m <- prophet(df_daily_AE, daily.seasonality = TRUE)
future <- make_future_dataframe(m, periods = 730)
forecast <- predict(m, future)
plot(m, forecast)
dyplot.prophet(m, forecast)
#For individual components
prophet_plot_components(m, forecast)

#Global active energy
m <- prophet(df_daily_GAP, daily.seasonality = TRUE)
future <- make_future_dataframe(m, periods = 730)
forecast <- predict(m, future)
plot(m, forecast)
dyplot.prophet(m, forecast)

#For individual components
prophet_plot_components(m, forecast)
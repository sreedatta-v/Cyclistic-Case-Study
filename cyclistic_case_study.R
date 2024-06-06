#Packages
library(tidyverse)
library(janitor)
library(lubridate)
library(ggplot2)

#Importing the CSV files

TripDataJan <- read.csv("C:\\Users\\sreed\\Downloads\\23-Cyclustic-bike-sharing\\202301-divvy-tripdata\\202301-divvy-tripdata.csv")
TripDataFeb <- read.csv("C:\\Users\\sreed\\Downloads\\23-Cyclustic-bike-sharing\\202302-divvy-tripdata\\202302-divvy-tripdata.csv")
TripDataMar <- read.csv("C:\\Users\\sreed\\Downloads\\23-Cyclustic-bike-sharing\\202303-divvy-tripdata\\202303-divvy-tripdata.csv")
TripDataApr <- read.csv("C:\\Users\\sreed\\Downloads\\23-Cyclustic-bike-sharing\\202304-divvy-tripdata\\202304-divvy-tripdata.csv")
TripDataMay <- read.csv("C:\\Users\\sreed\\Downloads\\23-Cyclustic-bike-sharing\\202305-divvy-tripdata\\202305-divvy-tripdata.csv")
TripDataJun <- read.csv("C:\\Users\\sreed\\Downloads\\23-Cyclustic-bike-sharing\\202306-divvy-tripdata\\202306-divvy-tripdata.csv")
TripDataJul <- read.csv("C:\\Users\\sreed\\Downloads\\23-Cyclustic-bike-sharing\\202307-divvy-tripdata\\202307-divvy-tripdata.csv")
TripDataAug <- read.csv("C:\\Users\\sreed\\Downloads\\23-Cyclustic-bike-sharing\\202308-divvy-tripdata\\202308-divvy-tripdata.csv")
TripDataSep <- read.csv("C:\\Users\\sreed\\Downloads\\23-Cyclustic-bike-sharing\\202309-divvy-tripdata\\202309-divvy-tripdata.csv")
TripDataOct <- read.csv("C:\\Users\\sreed\\Downloads\\23-Cyclustic-bike-sharing\\202310-divvy-tripdata\\202310-divvy-tripdata.csv")
TripDataNov <- read.csv("C:\\Users\\sreed\\Downloads\\23-Cyclustic-bike-sharing\\202311-divvy-tripdata\\202311-divvy-tripdata.csv")
TripDataDec <- read.csv("C:\\Users\\sreed\\Downloads\\23-Cyclustic-bike-sharing\\202312-divvy-tripdata\\202312-divvy-tripdata.csv")

#Examining the datasets
str(TripDataJan)
str(TripDataFeb)
str(TripDataMar)
str(TripDataApr)
str(TripDataMay)
str(TripDataJun)
str(TripDataJul)
str(TripDataAug)
str(TripDataSep)
str(TripDataOct)
str(TripDataNov)
str(TripDataDec)

## Combining the individual files into one 
tripdata2023 <- rbind(TripDataJan, TripDataFeb, TripDataMar, TripDataApr, TripDataMay, TripDataJun, TripDataJul, TripDataAug, TripDataSep, TripDataOct, TripDataNov, TripDataDec)

## Confirming the total number of rows for the combined dataframe

print(nrow(tripdata2023))

## Examining the combined dataset 

str(tripdata2023)

print(head(tripdata2023)) 

## Data Cleaning 
### The time format is currently yyyy-mm-dd hh:mm:ss to do a deeper analysis it is best to format into indiviudal columns and add a day of the week column.

tripdata2023$Date <- as.Date(tripdata2023$started_at)
tripdata2023$Month <- format(as.Date(tripdata2023$started_at), "%b")
tripdata2023$day <- format(as.Date(tripdata2023$started_at), "%d")
tripdata2023$Year <- format(as.Date(tripdata2023$started_at), "%Y")
tripdata2023$days_of_week <- format(as.Date(tripdata2023$started_at), "%A")

##Removing Null Values

tripdata2023 <- drop_na(tripdata2023)

## Remove duplicates from dataframe

tripdata2023_no_duplicates <- tripdata2023[!duplicated(tripdata2023$ride_id), ]
print(paste("Removed", nrow(tripdata2023) - nrow(tripdata2023_no_duplicates), "duplicate rows"))

## Creating a column to determine the ride length 

tripdata2023_v2 <- mutate(tripdata2023_no_duplicates, ride_length = difftime(ended_at, started_at, units = "mins"))
str(tripdata2023_v2)

## filtering out trips with a ride length less than 0.

nrow(tripdata2023_v2[tripdata2023_v2$ride_length < 0,])
tripdata2023_v3 <- tripdata2023_v2[!tripdata2023_v2$ride_length <0,]
glimpse(tripdata2023_v3)

## determining the amount of members vs casual riders

rider_type_total <- table(tripdata2023_v3$member_casual)
View(rider_type_total)

## Statistical analysis

trip_stats <- tripdata2023_v3 %>% 
  group_by(member_casual) %>% 
  summarise(average_ride_length = mean(ride_length), standard_deviation = sd(ride_length), median_ride_length = median(ride_length), min_ride_length = min(ride_length), max_ride_length = max(ride_length))
head(trip_stats)

## Determine the mode for the day of the week (code learnt from tutorialspoint.com)

getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

weekday_mode <- getmode(tripdata2023_v3$days_of_week)

print(weekday_mode)

## Determining the most popular day by rider type

tripdata2023_v3$days_of_week <- ordered(tripdata2023_v3$days_of_week, levels = c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"))

tripdata2023_v3 %>% 
  group_by(member_casual, days_of_week) %>% 
  summarise(rider_type_total = n(), average_ride_length = mean(ride_length)) %>% 
  arrange(member_casual, days_of_week)

## Determining the most popular months during 2020

popular_month <- tripdata2023_v3 %>% 
  group_by(Month) %>% 
  summarise(number_of_rides = n(), average_duration = mean(ride_length)) %>% 
  arrange(-number_of_rides)

View(popular_month)

## Determine the most popular start station

station_mode <- getmode(tripdata2023_v3$start_station_name)
print(station_mode)

## Determine the most popular start station for members

popular_start_stations_member <- tripdata2023_v3 %>% 
  filter(member_casual == 'member') %>% 
  group_by(start_station_name) %>% 
  summarise(number_of_starts = n()) %>% 
  filter(start_station_name != "") %>% 
  arrange(- number_of_starts)

head(popular_start_stations_member)

## Determine the most popular start station for casual riders

popular_start_stations_casual <- tripdata2023_v3 %>% 
  filter(member_casual == 'casual') %>% 
  group_by(start_station_name) %>% 
  summarise(number_of_starts = n()) %>% 
  filter(start_station_name != "") %>% 
  arrange(- number_of_starts)

head(popular_start_stations_casual)

## Saving clean data frame as CSV so it can be uploaded to tableau for additional visualisation 

tripdata2023_v3 %>%
  write.csv("tripdata2023_clean.csv")

## Visualization of the rider types

tripdata2023_v3 %>% 
  group_by(member_casual) %>% 
  summarise(total_rider_type = n()) %>% 
  ggplot(aes(x = member_casual, y = total_rider_type, fill = member_casual)) + 
  geom_col(position = "dodge") + geom_text(aes(label = total_rider_type, vjust = -0.25))

## Visualization of the rider types ride duration

rider_type_average_duration <- tripdata2023_v3 %>% 
  group_by(member_casual) %>% 
  summarize(average_ride_length = mean(ride_length))

rider_type_average_duration %>% 
  ggplot(aes(x = member_casual, y = average_ride_length, fill = member_casual)) +
  geom_col(position = "dodge") + geom_text(aes(label = average_ride_length, vjust = -0.25))

## Visualization of the number of trips by members and casual riders by the month


tripdata2023_v3 %>% 
  group_by(member_casual, Month) %>% 
  summarise(number_of_rides = n()) %>% 
  arrange(member_casual, Month)  %>% 
  ggplot(aes(x = Month, y = number_of_rides, fill = member_casual)) +
  geom_col(position = "dodge") +
  geom_text(aes(label = number_of_rides, angle = 90)) +
  facet_wrap(~member_casual)

## Visualization of the rider types
tripdata2023_v3 %>% 
  group_by(member_casual) %>% 
  summarise(total_rider_type = n()) %>% 
  ggplot(aes(x = member_casual, y = total_rider_type, fill = member_casual)) + 
  geom_col(position = "dodge") + geom_text(aes(label = total_rider_type, vjust = -0.25))

## Visualization of the rider types ride duration

rider_type_average_duration <- tripdata2023_v3 %>% 
  group_by(member_casual) %>% 
  summarize(average_ride_length = mean(ride_length))

rider_type_average_duration %>% 
  ggplot(aes(x = member_casual, y = average_ride_length, fill = member_casual)) +
  geom_col(position = "dodge") + geom_text(aes(label = average_ride_length, vjust = -0.25))


## Visualization of the usage by members and casual riders by the weekday

tripdata2023_v3 %>% 
  group_by(member_casual, days_of_week) %>% 
  summarise(number_of_rides = n(),average_duration = mean(ride_length)) %>% 
  arrange(member_casual, days_of_week)  %>% 
  ggplot(aes(x = days_of_week, y = average_duration, fill = member_casual)) +
  geom_col(position = "dodge")

## Visualization of the usage by members and casual riders by the month

tripdata2023_v3$Month <- ordered(tripdata2023_v3$Month, levels=c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"))

tripdata2023_v3 %>% 
  group_by(member_casual, Month) %>% 
  summarise(number_of_rides = n(),average_duration = mean(ride_length) ) %>% 
  arrange(member_casual, Month)  %>% 
  ggplot(aes(x = Month, y = average_duration, fill = member_casual)) +
  geom_col(position = "dodge") +
  geom_text(aes(label = number_of_rides, angle = 90)) +
  facet_wrap(~member_casual)

#data Viz practical

install.packages("Tmisc")
library(Tmisc)

#load ds and view
data("quartet")
View(quartet)

#summerize
quartet %>%
  group_by(set) %>% 
  summarise(mean(x),sd(x),mean(y),sd(y),cor(x,y))

#
ggplot(quartet,aes(x,y)) + geom_point() + geom_smooth(method=lm,se=FALSE) + facet_wrap(~set)


install.packages("SimDesign")
library(SimDesign)

path_data <- "F:/Google - Data Analytics Professional Course/Course_7_Data_Analysis_with_R_Programming/Week_3_Working_with_data_In_R_Studio/2.Cleaning Data/hotel_bookings.csv"
hotel_bookings <- read_csv(path_data)


hotel_summary <- 
  hotel_bookings %>%
  group_by(hotel) %>%
  summarise(average_lead_time=mean(lead_time),
            min_lead_time=min(lead_time),
            max_lead_time=max(lead_time))

View(hotel_summary)
hotel_bookings_city <- 
  filter(hotel_bookings, hotel_bookings$hotel=="City Hotel")
mean(hotel_bookings_city$lead_time)
mean(hotel_bookings$lead_time)

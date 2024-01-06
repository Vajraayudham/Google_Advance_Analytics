data("ToothGrowth")
View(ToothGrowth)

#install.packages("dplyr")
#library(dplyr)
filterd_g <- filter(ToothGrowth,dose==0.5) #filtered data by only dose whose value is 0.5
View(filterd_g)

View(arrange(filterd_g,len))  # arrange dataset in ascending order by length

#Pipe %>%  example 

filtered_tooth <- ToothGrowth %>% 
  filter(dose==2.0) %>% 
  arrange(len)

View(filtered_tooth)




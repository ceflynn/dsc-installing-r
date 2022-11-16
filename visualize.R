library(readr) #getting data
library(ggplot2) #plotting data
tips <- read_csv("tips.csv")
"Settings (by knit) >    Chunk Output in Console"
tips
ggplot(tips, aes(x=total_bill, y=tip, color = time, shape=smoker)) + geom_point() + facet_wrap(~day)

ggplot(tips, aes(x = day, fill=smoker))+geom_bar(position ="dodge") + facet_wrap(~time)

tips %>%
  select(smoker,tip,day,time) %>%
  mutate(gbp_tip = tip * 0.82) %>%
  filter(gbp_tip >=5) %>%
  ggplot(aes(x = day, fill= smoker)) + 
  geom_bar(position = "dodge") + 
  facet_wrap(~time) + 
  labs(title = "Number of Patrons By Day and Meal", subtitle = "Position by Smoker",
       x= "Day", y= "Count")

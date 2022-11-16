library(tidyverse)
data <- read_csv("courses.csv")
data %>%
  select(holeCount,rating,)%>%
  filter(rating >0) %>%
  ggplot(aes(x=holeCount,fill=rating))+
  geom_bar(position="dodge")+
  facet_wrap(~rating)+
  labs(title="Holes by Rating", subtitle="number of holes for each rating",
       x='Holes',y="count")

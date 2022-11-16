library(dplyr) #manipulating data
library(readr) #getting data
library(ggplot2) #plotting data
tips <- read_csv("tips.csv")
"Settings (by knit) > Chunk Output in Console"
tips
select(tips, total_bill)
select(tips, total_bill:size)
select(tips, -X1)
select(tips,starts_with("s"))
select(tips, ends_with("r"))
filter(tips, day=="Sun")
filter(tips, tip>5)
filter(tips, sex=="Male"& smoker=="Yes")
filter(tips, sex == "Male" | smoker == "Yes")

mutate(tips, gbp_total = total_bill * 0.81)
mutate(tips,
       gbp_total = total_bill *0.81,
       gbp_tip = tip * 0.81)

my_first_subset <- select(tips, smoker, tip)
my_second_subset <- mutate(my_first_subset, gbp_tip = tip * 0.82)
my_data_frame_i_actually_wanted <- filter(my_second_subset, gbp_tip >= 5)
my_data_frame_i_actually_wanted
tips %>%
select(smoker,tip)%>%
mutate(gbp_tip = tip * 0.82)  %>%
filter (gbp_tip >= 5)  

tips %>% #and then !
  select(smoker, tip)
tips %>%
  select(total_bill, tip, sex, smoker) %>%
  filter(sex == "Male" & smoker == "Yes") %>%
  mutate(gbp_total_bill = total_bill * 0.82, gbp_tip = tip * 0.82)

tips
tips %>%
  group_by(smoker)

tips
tips %>%
  group_by(smoker)

tips %>%
  group_by(smoker) %>%
  summarise(mean_tip = mean(tip),count = n())

tips %>%
  group_by(smoker) %>%
  summarise(mean_tip = mean(tip), count = n()) %>%
  arrange(desc(mean_tip))

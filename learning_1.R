my_number <- 2 + 2
my_number * 2
coffees <- c(2,1,2,3,1,2,0,2,3,1)
adjusted_coffees <- coffees * 1.2
coffee_data <- data.frame(coffees,adjusted_coffees)
coffee_data
coffee_data[1,]
coffee_data[,1]
coffee_data[1,1]
coffee_data$coffees
coffee_data$coffees[1]
sum(2,2)
base::sum(2,2)
dplyr::if_else
lsf("package:base")
convert_f_to_c <- function(farh_number){
  celc <-(farh_number - 32) / 1.8
  celc
}
convert_f_to_c(44)
# get tidyverse from CRAN
install.packages("tidyverse")



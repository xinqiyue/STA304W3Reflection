#### Preamble ####
# Purpose: Simulates data
# Author: Xinqi Yue
# Date: 19 September 2024
# Contact: xinqi.yue@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)
library(dplyr)
library(lubridate)

#### Simulate data ####
set.seed(304)

# Simulate data
dates <- seq.Date(
  from = as.Date("2020-01-01"), 
  to = as.Date("2023-12-31"), by = "day")

count <- rpois(length(dates), lambda = 10)

simulated_data <- data.frame(Date = dates, number_of_marriage = count)

#### Write_csv
write.csv(simulated_data, "simulated_marriage_data.csv", row.names = FALSE)

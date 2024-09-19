#### Preamble ####
# Purpose: Sanity check of the data
# Author: Xinqi Yue
# Date: 19 September 2024
# Contact: xinqi.yue@mail.utoronto.ca
# License: MIT
# Pre-requisites: Need to have simulated data
# Any other information needed? None

#### Workspace setup ####
library(tidyverse)

#### Test data ####
data <- read_csv("simulated_marriage_data.csv")

# Test for negative numbers
data$number_of_marriage |> min() <= 0

# Test for NAs
all(is.na(data$number_of_marriage))
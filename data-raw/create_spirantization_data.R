#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# Create data for untidydata package to be used to for R tutorials             #
# by                                                                           #
# Joseph V. Casillas (11/29/2016)                                              #
# - Updated 02/16/2018                                                         #
#                                                                              #
#                                                                              #
# Data                                                                         #
# - spriantization                                                             #
#     - Variables:                                                             #
#       - Continent: Character variable of continents                          #
#       - Country: Character variable of countries                             #
#       - Measurement: Character variable of distinct measurements             #
#       - Value: Double variable of measurement values                         #
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#

library(tidyverse)

# First we set the seed for reproducibility
set.seed(1)

# Create labels and set up constants
n <- 15

spirantization <- expand.grid(id = c(sprintf("beg_%02d", 1:n), 
                   sprintf("adv_%02d", 1:n), 
                   sprintf("nat_%02d", 1:n)), 
            position = c("initial", "vcv")) %>% 
  mutate(., 
  # Generate intensity values for consonant and following vowel
  cIntensity = c(rnorm(n = n, mean = 60, sd = 4),  # beg in initial position
                 rnorm(n = n, mean = 60, sd = 4),  # beg in vcv position
                 rnorm(n = n, mean = 60, sd = 4),  # adv in initial position
                 rnorm(n = n, mean = 60, sd = 4),  # adv in vcv position
                 rnorm(n = n, mean = 59, sd = 4),  # nat in initial position
                 rnorm(n = n, mean = 72, sd = 4)), # nat in vcv position
  vIntensity = c(rnorm(n = n, mean = 79, sd = 4),  # beg in initial position
                 rnorm(n = n, mean = 79, sd = 4),  # beg in vcv position
                 rnorm(n = n, mean = 80, sd = 4),  # adv in initial position
                 rnorm(n = n, mean = 80, sd = 4),  # adv in vcv position
                 rnorm(n = n, mean = 80, sd = 4),  # nat in initial position
                 rnorm(n = n, mean = 80, sd = 4))) # nat in vcv position

devtools::use_data(spirantization, overwrite = TRUE)

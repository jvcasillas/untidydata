#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# Create data for untidydata package to be used to for R tutorials            #
# by                                                                          #
# Joseph V. Casillas (11/29/2016)                                             #
# - Updated 02/16/2018                                                        #
#                                                                             #
#                                                                             #
# Data                                                                        #                                                                  # 
# - vowel_data                                                                #                                                                             # 
#     - Vowel data frame based on data from Bradlow (1995)                    # 
#     - Extended from 4 participants to 50                                    # 
#     - variables                                                             # 
#         - label                                                       # 
#         - rep                                                               # 
#         - f1                                                                # 
#         - f2                                                                #
#                                                                             #
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#

library(tidyverse)

##############
# VOWEL DATA #
##############

# Vowel data frame based on data from Bradlow (1995)
# Extended from 4 participants to 50

# Vowel data frame
set.seed(1)
f1 <- c(
  rnorm(n = 75, mean = 638, sd = 36), # male a 
  rnorm(n = 75, mean = 738, sd = 36), # female a 
  rnorm(n = 75, mean = 458, sd = 42), # male e
  rnorm(n = 75, mean = 558, sd = 42), # female e
  rnorm(n = 75, mean = 286, sd = 26), # male i
  rnorm(n = 75, mean = 386, sd = 26), # female i 
  rnorm(n = 75, mean = 460, sd = 19), # male o 
  rnorm(n = 75, mean = 560, sd = 19), # female o 
  rnorm(n = 75, mean = 322, sd = 20), # male u
  rnorm(n = 75, mean = 422, sd = 20)  # female u
)

f2 <- c(
  rnorm(n = 75, mean = 1353, sd = 84),  # male a
  rnorm(n = 75, mean = 1653, sd = 84),  # female a
  rnorm(n = 75, mean = 1814, sd = 131), # male e
  rnorm(n = 75, mean = 2114, sd = 131), # female e
  rnorm(n = 75, mean = 2147, sd = 131), # male i
  rnorm(n = 75, mean = 2447, sd = 131), # female i
  rnorm(n = 75, mean = 1019, sd = 99),  # male o
  rnorm(n = 75, mean = 1319, sd = 99),  # female o
  rnorm(n = 75, mean = 992,  sd = 121),  # male u
  rnorm(n = 75, mean = 1292,  sd = 121)  # female u
)

# Create vector of 5 vowels, repeat x3 for each participant
vowel <- rep(c('i', 'e', 'a', 'o', 'u'), each = 150)

# Create data frame
vowels_df <- data.frame(vowel)

# Add gender factor 
vowels_df$gender <- rep(c('male', 'female'), each = 75, 5)

# Create vector of 50 participants
participant <- rep(sprintf("p%02d", 1:50), each = 3, times = 5)

spanish_vowels <- vowels_df %>% 
  arrange(., vowel, desc(gender)) %>% 
  mutate(., participant = participant, 
            f1 = f1, 
            f2 = f2) %>% 
  arrange(., participant, vowel) %>% 
  group_by(., participant, vowel) %>%
  mutate(., rep = seq_along(vowel)) %>% 
  select(., participant, gender, vowel, rep, f1, f2) %>% 
  ungroup(.) %>% 
  unite(., vowel, gender, vowel, sep = "-") %>% 
  unite(., label, participant, vowel, sep = "-")

devtools::use_data(spanish_vowels, overwrite = TRUE)



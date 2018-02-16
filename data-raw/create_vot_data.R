#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# Create data for untidydata package to be used to for R tutorials             #
# by                                                                           #
# Joseph V. Casillas (11/29/2016)                                              #
# - Updated 02/16/2018                                                         #
#                                                                              #
#                                                                              #
# Data                                                                         #
# - vot                                                                        #
#     - a data frame with voice onset time data from bilinguals and            #
#       monolinguals                                                           #
#     - data simulated in English and Spanish for coronal stops                #
#     - variables                                                              #
#         - participant: FACTOR, subject id                                    #
#         - language: FACTOR, spanish, english                                 #
#         - item: FACTOR, word label                                           #
#         - repitition: NUMERIC, 1-3                                           #
#         - vot: NUMERIC, in ms                                                #
#                                                                              #
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#

library(tidyverse)


#######
# VOT #
#######

# Create participant IDs
monoSp <- paste0('monoSp0', 0:9)
monoEn <- paste0('monoEn0', 0:9)
bi     <- paste0('biling0', 0:9)

# Create participant vector
participant <- c(monoSp, monoEn, bi)

# Create language factor
language <- c('spanish', 'english')

# Create item vector
itemEn <- c('dig', 'dog', 'dug', 'tag', 'tug', 'tog')
itemSp <- c('di', 'da', 'de', 'ti', 'te', 'tu')

# Create repition 
repitition <- 3



# create monoSp dataframe
dfMonoSp <- tibble(

  # create 'participant', 'language' and 'item' variables
  participant = sort(rep(monoSp, times = length(itemEn) * repitition)), 
  language    = rep(language[1], times = length(itemSp) * repitition * length(monoSp)), 
  item        = rep(itemSp, each = 1, times = repitition * length(monoSp))) %>% 

  # Add repetition variable
  group_by(participant, item) %>%
  mutate(., repitition = seq_along(item)) %>% 

  # Arrange items in alphabetical order 
  arrange(., item) %>%
  ungroup(.) %>%

  # Add VOT values
  mutate(., vot = c(rnorm(n = 90, mean = -60, sd = 10), 
                    rnorm(n = 90, mean = 12, sd = 7)) %>% round(., 2)) %>% 

  # arrange by participant
  arrange(., participant) 






# create monoEn data
dfMonoEn <- tibble(

  # create 'participant', 'language' and 'item' variables
  participant = sort(rep(monoEn, times = length(itemEn) * repitition)), 
  language    = rep(language[2], times = length(itemEn) * repitition * length(monoEn)), 
  item        = rep(itemEn, each = 1, times = repitition * length(monoEn))) %>% 

  # Add repetition variable
  group_by(participant, item) %>%
  mutate(., repitition = seq_along(item)) %>% 

  # Arrange items in alphabetical order 
  arrange(., item) %>%
  ungroup(.) %>% 

  # Add VOT values
  mutate(., vot = c(rnorm(n = 90, mean = 15, sd = 7), 
                    rnorm(n = 90, mean = 55, sd = 10)) %>% round(., 2)) %>% 

  # arrange by participant
  arrange(., participant) 







# create bi data
dfbi <- tibble(

  
  participant = rep(bi, each = length(itemSp) * repitition, times = length(language)), 
  language    = sort(rep(language, times = length(bi) * length(itemSp) * repitition)), 
  item        = c(rep(itemEn, each = 1, times = repitition * length(bi)), 
                  rep(itemSp, each = 1, times = repitition * length(bi)))) %>% 

  # Add repition variable
  group_by(., participant, language, item) %>%
  mutate(., repitition = seq_along(item)) %>% 

  # Arrange df so that items are in alphabetical order 
  arrange(., language, item) %>% 
  ungroup(.) %>%

  # Add vals to data frame 
  mutate(., vot = c(rnorm(n = 90, mean = 15, sd = 7), 
                    rnorm(n = 90, mean = 45, sd = 15), 
                    rnorm(n = 90, mean = -60, sd = 10), 
                    rnorm(n = 90, mean = 10, sd = 10)) %>% round(., 2)) %>% 

  # arrange by participant
  arrange(., participant, language) 


vot <- bind_rows(dfMonoSp, dfMonoEn, dfbi) 

devtools::use_data(vot, overwrite = TRUE)

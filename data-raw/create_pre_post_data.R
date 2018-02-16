#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# Create data for untidydata package to be used to for R tutorials             #
# by                                                                           #
# Joseph V. Casillas (11/29/2016)                                              #
# - Updated 02/16/2018                                                         #
#                                                                              #
#                                                                              #
# Data                                                                         #
# - pre_post                                                                   #
#     - a data frame with pre- and post- test scores data from spanish and     #
#       catalan speakers                                                       #
#     - variables                                                              #
#         - id: FACTOR, subject id                                             #
#         - spec: FACTOR, g1_lo/g1_hi/g2_lo/g2_hi                              #
#         - test1: NUMERIC, percent                                            #
#         - test2: NUMERIC, percent                                            #
#                                                                              #
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#

library(tidyverse)

pre_post <- tribble(
  ~'id',    ~'spec', ~'test1', ~'test2', 
   'span01', 'g1_lo',  64.31,   69.2,
   'span02', 'g1_lo',  59.81,   63.7,
   'span03', 'g1_hi',  66.08,   70.9,
   'span04', 'g1_hi',  72.78,   79.2,
   'span05', 'g2_lo',  68.29,   75.4,
   'span06', 'g2_lo',  69.22,   76.7,
   'span07', 'g2_hi',  71.36,   77.2,
   'span08', 'g2_hi',  80.37,   88.9,
   'cata01', 'g1_lo',  75.63,   83.6,
   'cata02', 'g1_lo',  71.25,   78.8,
   'cata03', 'g1_hi',  69.09,   74.6,
   'cata04', 'g1_hi',  72.35,   80.7,
   'cata05', 'g2_lo',  71.66,   77.9,
   'cata06', 'g2_lo',  69.01,   75.0,
   'cata07', 'g2_hi',  69.86,   76.0,
   'cata08', 'g2_hi',  77.34,   85.6
)

devtools::use_data(pre_post, overwrite = TRUE)

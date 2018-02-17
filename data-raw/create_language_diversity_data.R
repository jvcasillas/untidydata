#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# Create data for untidydata package to be used to for R tutorials             #
# by                                                                           #
# Joseph V. Casillas (11/29/2016)                                              #
# - Updated 02/16/2018                                                         #
#                                                                              #
#                                                                              #
# Data                                                                         #
# - language_diversity                                                         #
#     - Data from:                                                             #
#       Nettle, D. (1998). Explaining Global Patterns of Language Diversity.   #
#       Journal of Anthropological Archaeology, 17, 354–374.                   #
#     - Variables:                                                             #
#       - Continent: Character variable of continents                          #
#       - Country: Character variable of countries                             #
#       - Measurement: Character variable of distinct measurements             #
#       - Value: Double variable of measurement values                         #
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#


library(tidyverse)

language_diversity <- tribble(
  ~"Country", ~"Langs", ~"Area", ~"Population", ~"Stations", ~"MGS", ~"Std", ~"Continent",
  "Algeria",18,2381741,25660,102,6.6,2.29,"Africa",
  "Angola",42,1246700,10303,50,6.22,1.87,"Africa",
  "Australia",234,7713364,17336,134,6,4.17,"Oceania",
  "Bangladesh",37,143998,118745,20,7.4,0.73,"Asia",
  "Benin",52,112622,4889,7,7.14,0.99,"Africa",
  "Bolivia",38,1098581,7612,48,6.92,2.5,"Americas",
  "Botswana",27,581730,1348,10,4.6,1.69,"Africa",
  "Brazil",209,8511965,153322,245,9.71,5.87,"Americas",
  "Burkina Faso",75,274000,9242,6,5.17,1.07,"Africa",
  "CAR",94,622984,3127,13,8.08,1.21,"Africa",
  "Cambodia",18,181035,8442,9,8.44,0.5,"Asia",
  "Cameroon",275,475422,12239,35,9.17,1.75,"Africa",
  "Chad",126,1284000,5819,11,4,1.81,"Africa",
  "Colombia",79,1138914,33613,35,11.37,1.37,"Americas",
  "Congo",60,342000,2346,10,9.6,1.69,"Africa",
  "Costa Rica",10,51100,3064,38,8.92,1.78,"Americas",
  "Cote d'Ivoire",75,322463,12464,9,8.67,1.25,"Africa",
  "Cuba",1,110861,10736,13,7.46,1.55,"Americas",
  "Ecuador",22,283561,10851,44,8.14,3.47,"Americas",
  "Egypt",11,1001449,54688,50,0.89,0.89,"Africa",
  "Ethiopia",112,1221900,53383,36,7.28,3.1,"Africa",
  "French Guiana",11,90000,102,5,10.4,0.8,"Americas",
  "Gabon",40,267667,1212,14,8.79,0.77,"Africa",
  "Ghana",73,238553,15509,28,8.79,1.68,"Africa",
  "Guatemala",52,108889,9467,59,9.31,2.23,"Americas",
  "Guinea",29,245857,5931,8,7.38,1.22,"Africa",
  "Guyana",14,214969,800,5,12,0,"Americas",
  "Honduras",9,112088,5265,13,8.54,2.53,"Americas",
  "India",405,3287590,849638,218,5.32,1.92,"Asia",
  "Indonesia",701,1904569,187765,58,10.67,1.82,"Asia",
  "Kenya",58,580367,25905,34,7.26,3.61,"Africa",
  "Laos",93,236800,4262,7,7.14,0.35,"Asia",
  "Liberia",34,111369,2705,21,10.62,0.84,"Africa",
  "Libya",13,1759540,4712,54,2.43,1.6,"Africa",
  "Madagascar",4,587041,11493,81,7.33,2.96,"Africa",
  "Malawi",14,118484,8556,20,5.8,1.5,"Africa",
  "Malaysia",140,329749,18333,63,11.92,0.37,"Asia",
  "Mali",31,1240192,9507,17,3.59,1.97,"Africa",
  "Mauritania",8,1025520,2036,8,0.75,0.83,"Africa",
  "Mexico",243,1958201,87836,272,5.84,2.69,"Americas",
  "Mozambique",36,801590,16084,90,6.07,1.39,"Africa",
  "Myanmar",105,676578,42561,30,6.93,0.81,"Asia",
  "Namibia",21,824292,1837,6,2.5,1.89,"Africa",
  "Nepal",102,140797,19605,16,6.39,1.98,"Asia",
  "Nicaragua",7,130000,3999,8,8.13,2.15,"Americas",
  "Niger",21,1267000,7984,10,2.4,1.28,"Africa",
  "Nigeria",427,923768,112163,24,7,2.16,"Africa",
  "Oman",8,212457,1559,2,0,0,"Asia",
  "Panama",13,75517,2466,5,9.2,0.75,"Americas",
  "Papua New Guinea",862,462840,3772,8,10.88,1.96,"Oceania",
  "Paraguay",21,406752,4397,16,10.25,2.51,"Americas",
  "Peru",91,1285216,21998,40,2.65,4.22,"Americas",
  "Phillipines",168,300000,62868,64,10.34,1.92,"Asia",
  "Saudi Arabia",8,2149690,14691,10,0.4,0.92,"Asia",
  "Senegal",42,196722,7533,12,3.58,1.11,"Africa",
  "Sierra Leone",23,71740,4260,23,8.22,0.59,"Africa",
  "Solomon Islands",66,28896,3301,1,12,0,"Oceania",
  "Somalia",14,637657,7691,28,3,1.69,"Africa",
  "South Africa",32,1221037,36070,114,6.05,3.5,"Africa",
  "Sri Lanka",7,65610,17240,17,9.59,2.59,"Asia",
  "Sudan",134,2505813,25941,43,4.02,2.82,"Africa",
  "Suriname",17,163265,429,2,12,0,"Americas",
  "Tanzania",131,945087,28359,45,7.02,1.9,"Africa",
  "Thailand",82,513115,56293,54,8.04,1.57,"Asia",
  "Togo",43,56785,3643,11,7.91,1.78,"Africa",
  "UAE",9,83600,1629,6,0.83,0.69,"Asia",
  "Uganda",43,235880,19517,21,10.14,1.17,"Africa",
  "Vanuatu",111,12189,163,4,12,0,"Oceania",
  "Venezuela",40,912050,20226,44,7.98,2.73,"Americas",
  "Vietnam",88,331689,68183,40,8.8,1.59,"Asia",
  "Yemen",6,527968,12302,2,0,0,"Asia",
  "Zaire",219,2344858,36672,16,9.44,1.9,"Africa",
  "Zambia",38,752618,8780,30,5.43,0.67,"Africa",
  "Zimbabwe",18,390759,10019,52,5.29,1.43,"Africa") %>% 
  gather(., Measurement, Value, -Country, -Continent) %>% 
  select(., Continent, Country, Measurement, Value)

devtools::use_data(language_diversity, overwrite = TRUE)

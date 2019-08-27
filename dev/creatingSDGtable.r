
# ISO code to SDG code lookup table
#
# @format A tibble with 2 columns and 8 rows containing
# SDG region codes and SDG region names
#
# @source This data was derived from the spreadsheet
# WPP2019_F01_LOCATIONS.xlsx
# \url{https://population.un.org/wpp/Download/Metadata/Documentation/}
# @export
# @examples
# \dontrun{
# # code that makes a plot
# # or code using packages (like tidyverse)
# # that aren't imported in this package per se
# }

library(here)
library(readxl)
library(devtools)

DB <- read_xlsx(here("dev", "WPP2019_F01_LOCATIONS.xlsx"),
                sheet = "DB")
SDGtable<-unique(DB[!is.na(DB$SDGRegName),c("SDGRegID","SDGRegName")])
use_data(SDGtable, overwrite=TRUE)









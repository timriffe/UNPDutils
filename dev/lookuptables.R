
# ISO code to SDG code lookup table
#
# @format A tibble with 3 columns and 235 rows containing
# country names, country ISO codes, and SDG codes.
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
#"ISOSDG"

# could add example of how to use this object. For example, we
# could give code to attach SDG codes to a smallish dataset that
# contains ISO codes.
 library(here)
 library(tidyverse)
 library(readxl)

 DB <- read_xlsx(here("dev", "WPP2019_F01_LOCATIONS.xlsx"),
           sheet = "DB")

 ISOSDG <- DB %>%
   filter(LocTypeName == "Country/Area") %>%
   mutate(ISO = as.integer(LocID),
          SDG = as.integer(SDGRegID)) %>%
   select(Location, ISO, SDG)

 saveRDS(ISOSDG, here("data", "ISOSDG.rds"))
 library(devtools)
 use_data(ISOSDG, overwrite = TRUE)

### make a little lookup table

 unique(DB$LocTypeName)

ISOtable <- DB %>%
    mutate(ISO = as.integer(LocID),
           ISOlabel = Location) %>%
    select(ISOlabel, ISO, LocTypeName) %>%
    filter(!is.na(ISOlabel),
           !is.na(ISO),
           !is.na(LocTypeName))
library(devtools)
use_data(ISOtable, overwrite = TRUE)








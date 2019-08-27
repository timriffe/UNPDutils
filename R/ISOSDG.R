#' ISO code to SDG code lookup table
#'
#' This data was derived from the spreadsheet
#' WPP2019_F01_LOCATIONS.xlsx
#'
#' @format A tibble with 3 columns and 235 rows containing
#' country names, country ISO codes, and SDG codes.
#' \describe{
#'   \item{Location}{Country name (character string).}
#'   \item{ISO}{Three digit ISO country code (integer)}
#'   \item{SDG}{Corresponding SDG codes (integer)}
#' }
#' @source
#' \url{https://population.un.org/wpp/Download/Metadata/Documentation/}
#' @examples
#' \dontrun{
#' # code that makes a plot
#' # or code using packages (like tidyverse)
#' # that aren't imported in this package per se
#' }

"ISOSDG"

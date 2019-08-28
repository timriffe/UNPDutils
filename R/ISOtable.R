# documentation for ISOtable

#' A lookup table for ISO codes and names
#'
#' This table might be helpful for matching ISO
#' codes to location names (all levels of geography).
#'
#' @format A tibble with 3 columns and 288 rows containing
#' ISO labels, ISO codes, and a label indicating the
#' level of aggregation.
#' \describe{
#'   \item{ISOlabel}{ISO area name (character string).}
#'   \item{ISO}{Three digit ISO code (integer)}
#'   \item{LocTypeName}{What level of aggregation the code pertains to (character strng)}
#' }
#' @source
#' \url{https://population.un.org/wpp/Download/Metadata/Documentation/}
#' @examples
#' \dontrun{
#' # Code that won't get executed, but it will be shown
#' }
"ISOtable"

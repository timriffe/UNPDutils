% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ISOSDG.R
\docType{data}
\name{ISOSDG}
\alias{ISOSDG}
\title{ISO code to SDG code lookup table}
\format{A tibble with 3 columns and 235 rows containing
country names, country ISO codes, and SDG codes.
\describe{
  \item{Location}{Country name (character string).}
  \item{ISO}{Three digit ISO country code (integer)}
  \item{SDG}{Corresponding SDG codes (integer)}
}}
\source{
\url{https://population.un.org/wpp/Download/Metadata/Documentation/}
}
\usage{
ISOSDG
}
\description{
This data was derived from the spreadsheet
WPP2019_F01_LOCATIONS.xlsx
}
\examples{
\dontrun{
# code that makes a plot
# or code using packages (like tidyverse)
# that aren't imported in this package per se
}
}
\keyword{datasets}

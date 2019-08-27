# make sure we're located in the package directory
# (we will be, if it has been opened as an R project)
here::here()

# lots of great packge-building helper tools
# in this package.
library(devtools)

# Always re-run this whenever you make changes
# to documentation or any other 'meta' aspect
# of the package.
document()

# a way to load the package without installing:
load_all()

# simulate CRAN checks (very strict)
check()

# We can build this package in the standard way
build()

# And if we build a hard copy, then we install
# using somethnig like this (change path to
# whatever build() tells us in the colsole)
path <- "C:/Users/pgerl/Desktop/UNPDutils_0.1.0.tar.gz"
install.packages(path,
                 repos = NULL,
                 type = "source")
# now you can load it in the standard way
library(UNPDutils)

# call up the help page
?ISOSDG

library(usethis)
?use_git_config
?use_github
github_token()
usethis::browse_github_token()
?browse_github_token
edit_r_environ()

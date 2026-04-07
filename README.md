
<!-- README.md is generated from README.Rmd. Please edit that file -->

# The rBEFdata package (BEF-China Fork)

<!-- badges: start -->

<!-- badges: end -->

This is a fork of the [rBEFdata](https://github.com/cran/rbefdata) as
available on CRAN until the
[2022-06-20](https://cran-archive.r-project.org/web/checks/2022/2022-06-20_check_results_rbefdata.html).
This fork corrects the failed checks and added some minor changes
described in the NEWS file. It is not intended to be developed further
as this fork’s purpose is to download data from the [BEF-China Data
Portal](https://data.botanik.uni-halle.de/bef-china), which the package
is already perfectly able to do as described below. For a further
developed version of the rBEFdata package please head over to
[rBEFdata](https://github.com/cpfaff/rbefdata/)

## Installation

You can install the development version of rbefdata like so:

``` r
# install.packages("remotes")
remotes::install_github("ataeub/rbefdata")
```

## Download data from the BEF-China Data Portal

``` r
library(rbefdata)

# Download metadata
metadata_656 <- bef.portal.get.metadata(656)

# Download dataset
dataset_656 <- bef.portal.get.dataset(656)

# For restricted datasets you will need to set credentials
bef.options(user_credentials = "<your-credentials>")
dataset_647 <- bef.portal.get.dataset(647)
```

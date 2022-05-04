
<!-- README.md is generated from README.Rmd. Please edit that file -->

# cleanventory.data <img src="man/figures/logo.svg" align="right" height="139" />

<!-- badges: start -->

[![R-CMD-check](https://github.com/RaoulWolf/cleanventory.data/workflows/R-CMD-check/badge.svg)](https://github.com/RaoulWolf/cleanventory.data/actions)
[![Codecov test
coverage](https://codecov.io/gh/RaoulWolf/cleanventory.data/branch/master/graph/badge.svg)](https://app.codecov.io/gh/RaoulWolf/cleanventory.data?branch=master)
[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
<!-- badges: end -->

> A [ZeroPM](https://zeropm.eu/) R package

The goal of cleanventory.data is to provide easy access to the data sets
as created by the
[cleanventory](https://github.com/RaoulWolf/cleanventory) package.

As such, it comes with no additional dependencies.

We suggest the following packages/functionalities in addition:
[`bit64::as.integer64()`](https://cran.r-project.org/web/packages/bit64)
to correctly handle the `tsca$cas_reg_no` column (kept as `double` for
compatibility).

As of 2022-05-04, the following inventories are included:

| Chemical Inventory | Name   | Version(s)            | URL                                                                                 |
|:-------------------|:-------|:----------------------|:------------------------------------------------------------------------------------|
| US EPA TSCA        | `tsca` | 2021-08               | <https://www.epa.gov/tsca-inventory>                                                |
| ECHA CLP Annex VI  | `clp`  | 9, 10, 13, 14, 15, 17 | <https://echa.europa.eu/en/information-on-chemicals/annex-vi-to-clp>                |
| ECHA EC            | `ec`   | *Unknown*             | <https://echa.europa.eu/information-on-chemicals/ec-inventory>                      |
| Japan NITE         | `nite` | March 2022            | <https://www.nite.go.jp/chem/english/ghs/ghs_download.html>                         |
| New Zealand IoC    | `ioc`  | December 2021         | <https://www.epa.govt.nz/database-search/new-zealand-inventory-of-chemicals-nzioc/> |
| South Korea NCIS   | `ncis` | 4 May 2022            | <https://www.epa.govt.nz/database-search/new-zealand-inventory-of-chemicals-nzioc/> |
| Australia HSIC     | `hcis` | *Unknown*             | <https://www.epa.govt.nz/database-search/new-zealand-inventory-of-chemicals-nzioc/> |

## Installation

You can install the development version of cleanventory.data from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
remotes::install_github("ZeroPM-H202/cleanventory.data")
```

## Example

The data sets are immediately available when loading the package.

``` r
library(cleanventory.data)
str(clp)
#> 'data.frame':    27857 obs. of  5 variables:
#>  $ index_no                             : chr  "001-001-00-9" "001-002-00-4" "001-003-00-X" "001-004-00-5" ...
#>  $ international_chemical_identification: chr  "hydrogen" "aluminium lithium hydride" "sodium hydride" "calcium hydride" ...
#>  $ ec_no                                : chr  "215-605-7" "240-877-9" "231-587-3" "232-189-2" ...
#>  $ cas_no                               : chr  "1333-74-0" "16853-85-3" "7646-69-7" "7789-78-8" ...
#>  $ atp                                  : int  9 9 9 9 9 9 9 9 9 9 ...
```

## Acknowledgement

This R package was developed by the EnviData initiative at the
[Norwegian Geotechnical Institute (NGI)](https://www.ngi.no/eng) as part
of the project [ZeroPM: Zero pollution of Persistent, Mobile
substances](https://zeropm.eu/). This project has received funding from
the European Union’s Horizon 2020 research and innovation programme
under grant agreement No 101036756.

------------------------------------------------------------------------

If you find this package useful and can afford it, please consider
making a donation to a humanitarian non-profit organization, such as
[Sea-Watch](https://sea-watch.org/en/). Thank you.

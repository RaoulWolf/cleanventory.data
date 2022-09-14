
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

cleanventory.data aims to have correctly identified all missing values
in the data sets, all CAS Registry Numbers validated (when present) and
additionally all special characters are transformed into ASCII
characters.

As such, it comes with no additional dependencies.

We suggest the following packages/functionalities in addition:
[`bit64::as.integer64()`](https://cran.r-project.org/web/packages/bit64)
to correctly handle the `us_tsca$cas_reg_no` column (kept as `double`
for compatibility).

As of 2022-09-14, the following inventories are included:

| Chemical Inventory | Name                                                                                                                                                                        | Version(s)                                   | URL                                                                                                                                                  |
|:-------------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:---------------------------------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------|
| US EPA TSCA        | `us_tsca`                                                                                                                                                                   | 2021-08                                      | <https://www.epa.gov/tsca-inventory>                                                                                                                 |
| EU CLP Annex VI    | `eu_clp_09`</br>`eu_clp_10`</br>`eu_clp_13`</br>`eu_clp_14`</br>`eu_clp_15`</br>`eu_clp_17`                                                                                 | 9, 10, 13, 14, 15, 17                        | <https://echa.europa.eu/en/information-on-chemicals/annex-vi-to-clp>                                                                                 |
| EU ECI             | `eu_eci`                                                                                                                                                                    | *Unknown*                                    | <https://echa.europa.eu/information-on-chemicals/ec-inventory>                                                                                       |
| Japan NITE         | `jp_nite`                                                                                                                                                                   | March 2022                                   | <https://www.nite.go.jp/chem/english/ghs/ghs_download.html>                                                                                          |
| New Zealand IoC    | `nz_ioc`                                                                                                                                                                    | December 2021                                | <https://www.epa.govt.nz/database-search/new-zealand-inventory-of-chemicals-nzioc/>                                                                  |
| South Korea NCIS   | `kr_ncis`                                                                                                                                                                   | 4 May 2022                                   | <https://ncis.nier.go.kr/en/mttrList.do>                                                                                                             |
| Australia HSIC     | `au_hcis`                                                                                                                                                                   | *Unknown*                                    | <http://hcis.safeworkaustralia.gov.au/HazardousChemical>                                                                                             |
| Australia ICI      | `au_ici`                                                                                                                                                                    | 10 February 2022                             | <https://www.industrialchemicals.gov.au/search-inventory>                                                                                            |
| Taiwan TCSI        | `tw_csi`                                                                                                                                                                    | 1 January 2019, 8 September 2019             | <https://gazette.nat.gov.tw/egFront/detail.do?metaid=73440&log=detailLog>, <https://gazette.nat.gov.tw/egFront/detail.do?metaid=78617&log=detailLog> |
| Philippine ICCS    | `ph_iccs`</br>`ph_emb_mc_07`</br>`ph_emb_mc_08`                                                                                                                             | 2017, 2020, 2021                             | <https://chemical.emb.gov.ph/?page_id=138>                                                                                                           |
| Japan CSCL         | `jp_cscl_ecs`</br>`jp_cscl_nacs_1`</br>`jp_cscl_nacs_2`                                                                                                                     | 31 May 2022</br>31 May 2022</br>1 April 2022 | <https://www.nite.go.jp/en/chem/chrip/chrip_search/sltLst>                                                                                           |
| Canada DSL         | `ca_dsl`                                                                                                                                                                    | 14 June 2022                                 | <https://pollution-waste.canada.ca/substances-search/Substance?lang=en>                                                                              |
| China IECSC        | `cn_iecsc`                                                                                                                                                                  | 2013                                         | <https://www.mee.gov.cn/gkml/hbb/bgg/201301/t20130131_245810.htm>                                                                                    |
| Nordics SPIN       | `xn_spin`                                                                                                                                                                   | 2000                                         | <http://www.spin2000.net/spinmyphp/>                                                                                                                 |
| US CDR             | `us_cdr_2016_ccu`</br>`us_cdr_2016_iu`</br>`us_cdr_2016_mi`</br>`us_cdr_2016_napv`</br>`us_cdr_2020_ccu`</br>`us_cdr_2020_ipu`</br>`us_cdr_2020_mii`</br>`us_cdr_2020_napv` | 2016</br>2020                                | <https://www.epa.gov/chemical-data-reporting>                                                                                                        |
| Malaysia CIMS      | `my_cims`                                                                                                                                                                   | 2017                                         | <https://cims.dosh.gov.my/>                                                                                                                          |

## Installation

You can install the development version of cleanventory.data from
[GitHub](https://github.com/) with:

``` r
# install.packages("remotes")
remotes::install_github("ZeroPM-H2020/cleanventory.data")
```

## Example

The data sets are immediately available when loading the package.

``` r
library(cleanventory.data)
str(eu_clp_17)
#> 'data.frame':    4702 obs. of  4 variables:
#>  $ index_no                             : chr  "001-001-00-9" "001-002-00-4" "001-003-00-X" "001-004-00-5" ...
#>  $ international_chemical_identification: chr  "hydrogen" "aluminium lithium hydride" "sodium hydride" "calcium hydride" ...
#>  $ ec_no                                : chr  "215-605-7" "240-877-9" "231-587-3" "232-189-2" ...
#>  $ cas_no                               : chr  "1333-74-0" "16853-85-3" "7646-69-7" "7789-78-8" ...
```

## Acknowledgement

This R package was developed at the [Norwegian Geotechnical Institute
(NGI)](https://www.ngi.no/eng) as part of the project [ZeroPM: Zero
pollution of Persistent, Mobile substances](https://zeropm.eu/). This
project has received funding from the European Union’s Horizon 2020
research and innovation programme under grant agreement No 101036756.

------------------------------------------------------------------------

If you find this package useful and can afford it, please consider
making a donation to a humanitarian non-profit organization, such as
[Sea-Watch](https://sea-watch.org/en/). Thank you.


<!-- README.md is generated from README.Rmd. Please edit that file -->

# cleanventory.data <img src="man/figures/logo.svg" align="right" height="139" />

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
<!-- badges: end -->

The goal of cleanventory.data is to …

## Installation

You can install the development version of cleanventory.data like so:

``` r
# FILL THIS IN! HOW CAN PEOPLE INSTALL YOUR DEV PACKAGE?
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(cleanventory.data)
str(tsca)
#> 'data.frame':    68191 obs. of  11 variables:
#>  $ id          : int  1 2 3 4 5 6 7 8 9 10 ...
#>  $ cas_rn      : chr  "50-00-0" "50-01-1" "50-02-2" "50-07-7" ...
#>  $ cas_reg_no  :integer64 50000 50011 50022 50077 50146 50215 50237 50248 ... 
#>  $ uid         : chr  NA NA NA NA ...
#>  $ exp         : int  NA NA NA NA NA NA NA NA NA NA ...
#>  $ chem_name   : chr  "Formaldehyde" "Guanidine, hydrochloride (1:1)" "Pregna-1,4-diene-3,20-dione, 9-fluoro-11,17,21-trihydroxy-16-methyl-, (11.beta.,16.alpha.)-" "Azirino[2',3':3,4]pyrrolo[1,2-a]indole-4,7-dione, 6-amino-8-[[(aminocarbonyl)oxy]methyl]-1,1a,2,8,8a,8b-hexahyd"| __truncated__ ...
#>  $ def         : chr  NA NA NA NA ...
#>  $ uvcb        : chr  NA NA NA NA ...
#>  $ flag        : chr  NA NA NA "S" ...
#>  $ activity    : chr  "ACTIVE" "ACTIVE" "ACTIVE" "ACTIVE" ...
#>  $ last_created: chr  "2021-08" "2021-08" "2021-08" "2021-08" ...
```

## Acknowledgement

This R package was developed by the EnviData initiative at the
[Norwegian Geotechnical Institute (NGI)](https://www.ngi.no/eng) as part
of the project [ZeroPM: Zero pollution of Persistent, Mobile
substances](https://zeropm.eu/). This project has received funding from
the European Union’s Horizon 2020 research and innovation programme
under grant agreement No 101036756.

If you find this package useful and can afford it, please consider
making a donation to a humanitarian non-profit organization, such as
[Sea-Watch](https://sea-watch.org/en/). Thank you.

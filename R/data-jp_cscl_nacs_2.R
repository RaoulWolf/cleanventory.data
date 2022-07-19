#' @title The Japanese Chemical Substances Control Law Newly Announced Chemical
#'   Substances (notified on and after April 1, 2011) Data Set
#' @description Substances that were notified on and after April 1, 2011, as
#'   substances that are either newly manufactured in, or imported to, Japan
#'   and are not classified as Class I Specified Chemical Substances. Such
#'   substances are designated on and after 2017 as Newly Announced Chemical
#'   Substances (notified on and after April 1, 2011) in accordance with
#'   paragraph (4) of Article 4.
#'
#'   These substances are designated as General Chemical Substances in
#'   accordance with paragraph (7) of Article 2 (excluding Priority Assessment
#'   Chemical Substances, Monitoring Chemical Substances and Class I/II
#'   Specified Chemical Substances). If a substance corresponds to the "Newly
#'   Announced Chemical Substances (notified on and after April 1, 2011)", the
#'   following items are displayed.
#' @format A data frame with 1,141 rows and 5 variables:
#' \describe{
#'   \item{no}{(Integer) List number for each substance}
#'   \item{chrip_id}{(Character) The CHemical Risk Information Platform (CHRIP)
#'     ID}
#'   \item{cas_rn}{(Character) Chemical Abstracts Service (CAS) registry number}
#'   \item{cas_identity}{(Character) Additional information about the substance}
#'   \item{chemical_substance_name}{(Character) The provided name for the
#'     substance}
#' }
#' @source \url{https://www.nite.go.jp/en/chem/chrip/chrip_search/sltLst}
"jp_cscl_nacs_2"

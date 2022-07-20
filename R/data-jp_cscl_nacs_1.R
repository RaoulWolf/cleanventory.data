#' @title The Japanese Chemical Substances Control Law Newly Announced Chemical
#'   Substances (notified by March 31, 2011) Data Set
#' @description Substances that were notified by March 31, 2011, as substances
#'   that are either newly manufactured in, or imported to, Japan and are not
#'   classified as Class I Specified Chemical Substances, Type II Monitoring
#'   Chemical Substances or Type III Monitoring Chemical Substances. Such
#'   substances are designated by 2016 as Newly Announced Chemical Substances
#'   (notified by March 31, 2011)in accordance with paragraph (4) of Article 4.
#'
#'   These substances are designated as General Chemical Substances in
#'   accordance with paragraph (7) of Article 2 (excluding Priority Assessment
#'   Chemical Substances, Monitoring Chemical Substances and Class I/II
#'   Specified Chemical Substances). If a substance corresponds to the "Newly
#'   Announced Chemical Substances (notified by March 31, 2011)", the following
#'   items are displayed.
#'
#'   About cas_identity:
#'
#'   * 1: The substance which matches the substance indicated by MITI number or
#'     cabinet order number when a certain condition is fulfilled.
#'     (The condition is listed in the remarks column of the search result, so
#'     be sure to check it)
#'   * 2: The substance which is regarded as CSCL: Class I Specified Chemical
#'     Substances, Class II Specified Chemical Substances, Monitoring Chemical
#'     Substances, Priority Assessment Chemical Substances by the operation
#'     notification "Implementation of the Act on the Evaluation of Chemical
#'     Substances and Regulation of Their Manufacture, etc. 3-1".
#' @format A data frame with 7,806 rows and 5 variables:
#' \describe{
#'   \item{no}{(Integer) List number for each substance}
#'   \item{chrip_id}{(Character) The CHemical Risk Information Platform (CHRIP)
#'     ID}
#'   \item{cas_rn}{(Character) Chemical Abstracts Service (CAS) registry number}
#'   \item{cas_identity}{(Integer) Additional information about the substance,
#'     see Description for details}
#'   \item{chemical_substance_name}{(Character) The provided name for the
#'     substance}
#' }
#' @source \url{https://www.nite.go.jp/en/chem/chrip/chrip_search/sltLst}
"jp_cscl_nacs_1"

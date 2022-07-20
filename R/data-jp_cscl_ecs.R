#' @title The Japanese Chemical Substances Control Law Existing Chemical
#'   Substances Data Set
#' @description Substances that were manufactured or imported for business
#'   purpose at the time of the promulgation of the CSCL (excluding substances
#'   that were manufactured or imported for testing and research purposes and
#'   those that were manufactured or imported for use as reagents), and whose
#'   names were published pursuant to the CSCL (chemical substances were listed
#'   in the list of Existing Chemical Substances).
#'
#'   Under the current CSCL, substances are designated as General Chemical
#'   Substances in accordance with paragraph (7) of Article 2 (excluding
#'   Priority Assessment Chemical Substances, Monitoring Chemical Substances
#'   and Class I/II Specified Chemical Substances). If a substance corresponds
#'   to the "Existing Chemical substances", the following items are displayed.
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
#' @format A data frame with 56,975 rows and 5 variables:
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
"jp_cscl_ecs"

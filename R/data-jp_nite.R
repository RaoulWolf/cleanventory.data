#' @title The Japanese NITE Data Set
#' @description GHS Classification Result by the Japanese Government is
#'   intended to provide a reference for preparing a GHS label or SDS for
#'   users. To include the same classification result in a label or SDS for
#'   Japan is NOT mandatory.
#'
#'   Users can cite or copy this classification result when preparing a GHS
#'   label or SDS. Please be aware, however, that the responsibility for a
#'   label or SDS prepared by citing or copying this classification result
#'   lies with users.
#'
#'   This GHS classification was conducted based on the information sources
#'   and the guidance for classification and judgement which are described in
#'   the GHS Classification Guidance for the Japanese Government etc. Using
#'   other literature, test results etc. as evidence and including different
#'   content from this classification result in a label or SDS are allowed.
#' @format A data frame with 4,933 rows and 5 variables:
#' \describe{
#'   \item{cas}{(Character) Chemical Abstracts Service (CAS) registry number}
#'   \item{cas_without_hyphen}{(Integer) CAS registry number without hyphens}
#'   \item{substance_name}{(Character) the substance name}
#'   \item{id}{(Character) record ID in various formats}
#'   \item{fy}{(Character) FY publication year}
#'   \item{new_revise}{(Character) Additional information on changes to
#'     previous entries}
#' }
#' @source \url{https://www.nite.go.jp/chem/english/ghs/ghs_download.html}
"jp_nite"

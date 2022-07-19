#' @title The Philippine Inventory of Chemicals and Chemical Substances
#' @description Note that this data was extracted from messy PDFs and is not
#'   complete. The entire procedure is documented in the "cleanventory" R
#'   package. For further information on the data sets, please visit the
#'   official website from which the raw data originated:
#'
#'   * https://chemical.emb.gov.ph/?page_id=138
#'
#' @format A data frame with 46,897 rows and 2 variables:
#' \describe{
#'   \item{cas_rn}{(Character) Chemical Abstracts Service (CAS)
#'     registry number}
#'   \item{chemical_name}{(Character) The associated chemical name}
#' }
"ph_iccs"

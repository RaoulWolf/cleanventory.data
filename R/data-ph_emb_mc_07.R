#' @title The Philippine Inventory of Chemicals and Chemical Substances EMB-MC
#'   2020-007
#' @description Note that this data set was manually extracted from a messy
#'   PDF. The entire procedure is documented in the "cleanventory" R package.
#'   For further information on the data sets, please visit the official
#'   website from which the raw data originated:
#'
#'   * https://chemical.emb.gov.ph/?page_id=138
#'
#' @format A data frame with 31 rows and 3 variables:
#' \describe{
#'   \item{no}{(Integer) The list number of each substance}
#'   \item{cas_registry_no}{(Character) Chemical Abstracts Service (CAS)
#'     registry number}
#'   \item{notified_chemical_name}{(Character) The associated chemical name}
#' }
"ph_emb_mc_07"

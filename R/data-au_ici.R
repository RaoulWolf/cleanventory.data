#' @title The Australia Industrial Chemicals Inventory Data Set
#' @description The Australian Inventory of Industrial Chemicals (Inventory) is
#'   a searchable database of around 40,000 chemicals that are being
#'   manufactured or imported (introduced) into Australia for industrial use.
#'
#'   This downloadable version of the Inventory is provided for convenience
#'   only and is not the official version of the Inventory. AICIS regularly
#'   updates and makes changes to the Inventory that are not incorporated in
#'   this downloadable version. The downloadable Inventory:
#'
#'   * is a copy of the publicly available information on the Inventory as at
#'     10 February 2022 and may not be complete, accurate and up-to-date
#'
#'   * should not be relied on for the latest information about a chemical –
#'     you must search the online Inventory to see if your chemical is listed
#'     and what any terms of its listing are
#'
#'   * does not include chemicals that cannot be disclosed to the public
#'     because the terms are confidentially listed on the Inventory
#'
#'   * does not include URL links to assessment and evaluation statements
#' @format A data frame with 39,460 rows and 5 variables:
#' \describe{
#'   \item{cr_no}{(Character) Chemical Abstracts Service (CAS) registry number}
#'   \item{cas_no}{(Character) Chemical Abstracts Service (CAS) registry number}
#'   \item{cas_name}{(Character) the CAS name}
#'   \item{aicis_approved_chemical_name_aacn}{(Character) the AICIS approved
#'     chemical name (AACN)}
#'   \item{molecular_formula}{(Character) the molecular formula}
#' }
#' @source \url{https://www.industrialchemicals.gov.au/search-inventory}
"au_ici"

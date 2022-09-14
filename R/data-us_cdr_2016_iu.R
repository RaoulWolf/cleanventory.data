#' @title The United States Chemical Data Reporting Inventory, 2016 Industrial
#'   Use
#' @description Note that the .csv file needs to be manually downloaded
#'   from the official website:
#'   https://www.epa.gov/chemical-data-reporting
#'
#' @format A data frame with 64,389 rows and 5 variables:
#' \describe{
#'   \item{p_cdr_submissions_consolidated_id}{(Integer) The CDR internal
#'     identifier number}
#'   \item{chemical_id_number}{(Character) The Chemical Abstract Service (CAS)
#'     Registry Number of the substance}
#'   \item{stripped_chemical_id_number}{(Integer) The CAS Registry Number
#'     without hyphens}
#'   \item{chemical_name}{(Character) The substance name}
#'   \item{activity}{(Character) Optional information on the category of the
#'     substance}
#' }
"us_cdr_2016_iu"

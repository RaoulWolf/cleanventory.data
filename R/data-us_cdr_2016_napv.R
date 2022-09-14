#' @title The United States Chemical Data Reporting Inventory, 2016 National
#'   Aggregate Production Volume
#' @description Note that the .csv file needs to be manually downloaded
#'   from the official website:
#'   https://www.epa.gov/chemical-data-reporting
#'
#' @format A data frame with 8,768 rows and 2 variables:
#' \describe{
#'   \item{chemical_id_number}{(Character) The Chemical Abstract Service (CAS)
#'     Registry Number of the substance}
#'   \item{stripped_chemical_id_number}{(Integer) The CAS Registry Number
#'     without hyphens}
#' }
"us_cdr_2016_napv"

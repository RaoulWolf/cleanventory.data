#' @title The United States Chemical Data Reporting Inventory, 2020 Nationally
#'   Aggregated Production Volumes
#' @description Note that the .csv file needs to be manually downloaded
#'   from the official website:
#'   https://www.epa.gov/chemical-data-reporting
#'
#' @format A data frame with 8,660 rows and 4 variables:
#' \describe{
#'   \item{chemical_name}{(Character) The substance name}
#'   \item{chemical_id}{(Character) The Chemical Abstract Service (CAS)
#'     Registry Number of the substance}
#'   \item{chemical_id_wo_dashes}{(Double) The CAS Registry Number without
#'     hyphens}
#'   \item{chemical_id_type}{(Character) The type of chemical identifier}
#' }
"us_cdr_2020_napv"

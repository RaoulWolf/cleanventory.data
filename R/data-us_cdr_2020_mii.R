#' @title The United States Chemical Data Reporting Inventory, 2020
#'   Manufacturing-Import Information
#' @description Note that the .csv file needs to be manually downloaded
#'   from the official website:
#'   https://www.epa.gov/chemical-data-reporting
#'
#' @format A data frame with 43,468 rows and 5 variables:
#' \describe{
#'   \item{chemical_report_id}{(Integer) The CDR internal identifier number}
#'   \item{chemical_name}{(Character) The substance name}
#'   \item{chemical_id}{(Character) The Chemical Abstract Service (CAS)
#'     Registry Number of the substance}
#'   \item{chemical_id_wo_dashes}{(Double) The CAS Registry Number without
#'     hyphens}
#'   \item{chemical_id_type}{(Character) The type of chemical identifier}
#' }
"us_cdr_2020_mii"

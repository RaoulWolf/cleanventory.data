#' @title The New Zealand Inventory of Chemicals Data Set
#' @description This database is a collection of all hazardous single chemicals
#'   that can be used in products assigned to a group standard. It contains the
#'   substance name, the CAS number, the approval status and how it can be used
#'   in a group standard.
#'
#'   Most group standards have a requirement to ensure that every hazardous
#'   component of your product is listed on the New Zealand Inventory of
#'   Chemicals (IoC). If you have a product that contains a component that
#'   isn't listed on the IoC, you will have to notify the EPA of it.
#'
#'   You can search the IoC using the chemical name or CAS number.
#'
#'   Some non-hazardous chemicals are listed in the NZIoC. When the NZIoC was
#'   created, we did not have hazard data on many chemicals so did not know if
#'   they were hazardous or non-hazardous. The decision was made to list all
#'   chemicals at that time. However, it is not mandatory to list non-hazardous
#'   chemicals.
#' @format A data frame with 28,937 rows and 5 variables:
#' \describe{
#'   \item{cas_number}{(Character) Chemical Abstracts Service (CAS) registry number}
#'   \item{cas_name}{(Character) the name associated with the CAS registry number}
#'   \item{approval}{(Character) information on the approval status}
#'   \item{restrictions_exclusions}{(Character) information on restrictions and exclusions}
#'   \item{version}{(Character) month and year of data set publication}
#' }
#' @source \url{https://www.epa.govt.nz/industry-areas/hazardous-substances/guidance-for-importers-and-manufacturers/hazardous-substances-databases/}
"ioc"

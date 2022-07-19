#' @title The Australia Hazardous Chemical Information System Data Set
#' @description HCIS is an internet advisory service that assists you to find
#'   information on chemicals that have been classified in accordance with the
#'   Globally Harmonized System of Classification and Labelling of Chemicals
#'   (GHS) by an authoritative source, such as the European Chemicals Agency
#'   (ECHA) or the Australian Industrial Chemicals Introduction Scheme (AICIS),
#'   formerly the National Industrial Chemicals Notification and Assessment
#'   Scheme (NICNAS).
#'
#'   HCIS is provided for guidance only and is not a comprehensive database of
#'   all hazardous chemicals. Safe Work Australia monitors the quality of the
#'   information available on HCIS and updates the information regularly.
#'   However, Safe Work Australia does not make any representation or warranty
#'   about the accuracy, reliability, currency or completeness of any material
#'   contained within HCIS. The classifications in HCIS may include hazard
#'   properties which are not recognised under the model Work Health and Safety
#'   Regulations, including environmental hazard properties, and may not include
#'   hazard properties if they have not been assessed by the authoritative
#'   source.
#'
#'   It is the responsibility of the Australian manufacturer/importer to
#'   determine if their product is a hazardous chemical and if so, to correctly
#'   classify their product. If you are unsure about the classification of a
#'   chemical not included in this database you should contact your chemical
#'   supplier or the manufacturer/importer for more information or source
#'   independent professional advice.
#'
#'   HCIS also includes workplace exposure standards (WES). Mandatory exposure
#'   standards are also listed in the legal document Workplace Exposure
#'   Standards for Airborne Contaminants. No exposure standard should be
#'   applied without reference to the Guidance on the Interpretation of
#'   Workplace Exposure Standards for Airborne Contaminants and to the related
#'   documentation.
#' @format A data frame with 6,826 rows and 9 variables:
#' \describe{
#'   \item{cas_no}{(Character) Chemical Abstracts Service (CAS) registry number}
#'   \item{chemical_name}{(Character) the chemical name}
#'   \item{hazard_category}{(Character) the associated hazard category}
#'   \item{pictogram_codes_and_signal_words}{(Character) any associated signal words and pictogram codes}
#'   \item{hazard_statement_codes}{(Character) the harmonized hazard statement codes}
#'   \item{hazard_statements}{(Character) the harmonized hazard statements}
#'   \item{cut_offs_specifications}{(Character) additional information on cut-offs or other specifications}
#'   \item{notes}{(Character) any additional notes}
#'   \item{sources}{(Character) data sources for the hazard statements}
#' }
#' @source \url{http://hcis.safeworkaustralia.gov.au/HazardousChemical}
"au_hcis"

# The .xlsx file has to manually downloaded from the official website:
# https://pollution-waste.canada.ca/substances-search/Substance?lang=en

# Read-in the DSL .xlsx file in "cleanventory" format

ca_dsl <- cleanventory::read_ca_dsl(
  path = paste("data-raw/data", "Domestic Substances List (DSL).xlsx", sep = "/"),
  clean_non_ascii = TRUE
)

# Export the data as RDA

save(ca_dsl, file = "data/ca_dsl.rda")
tools::resaveRdaFiles(paths = "data/ca_dsl.rda")

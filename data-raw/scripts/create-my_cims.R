# The TSV file has to manually downloaded from the official website:
# https://cims.dosh.gov.my/

# Read-in the CIMS TSV file in "cleanventory" format

my_cims <- cleanventory::read_my_cims(
  path = "data-raw/data/cims.tsv",
  clean_non_ascii = TRUE
)

# Export the data as RDA

save(my_cims, file = "data/my_cims.rda")
tools::resaveRdaFiles(paths = "data/my_cims.rda")

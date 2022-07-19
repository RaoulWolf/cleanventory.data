# The download link is unfortunately hidden behind a JavaScript application.
# The following "path" links to a manually downloaded file

path <- "../Chemical+Search_20220503055738.xlsx"

# Read-in the NCIS XLSX in "cleanventory" format

kr_ncis <- cleanventory::read_kr_ncis(
  path = "../Chemical+Search_20220503055738.xlsx",
  clean_non_ascii = TRUE
)

# Export the data as RDA

save(kr_ncis, file = "data/kr_ncis.rda")
tools::resaveRdaFiles(paths = "data/kr_ncis.rda")

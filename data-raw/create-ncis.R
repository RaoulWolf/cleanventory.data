# The download link is unfortunately hidden behind a JavaScript application.
# The following "path" links to a manually downloaded file

path <- "../Chemical+Search_20220503055738.xlsx"

# Read-in the NCIS XLSX in "cleanventory" format

ncis <- cleanventory::read_ncis(path = path, clean_non_ascii = TRUE)

# Export the data as RDA

save(ncis, file = "data/ncis.rda")
tools::resaveRdaFiles(paths = "data/ncis.rda")

url <- paste(
  "http://hcis.safeworkaustralia.gov.au/HazardousChemical/DownloadExcel2007",
  "SearchBy=Name&results=30&sortBy=Name&orderBy=MR&isAdvancedSearch=false",
  sep = "?"
)

options(timeout = max(300, getOption("timeout")))

download.file(
  url = url,
  destfile = "../HCResults.xlsx",
  mode = "wb"
)

path <- "../HCResults.xlsx"

Hazardous Chemical Information System (HCIS)

###

# Setting up a temporary path and defining the URL from the official website:
# http://hcis.safeworkaustralia.gov.au/HazardousChemical

tmp <- tempdir()

url <- paste(
  "http://hcis.safeworkaustralia.gov.au/HazardousChemical/DownloadExcel2007",
  "SearchBy=Name&results=30&sortBy=Name&orderBy=MR&isAdvancedSearch=false",
  sep = "?"
)

# Downloading the XLSX file to the temporary location

options(timeout = max(300, getOption("timeout")))

download.file(
  url = url,
  destfile = paste(tmp, "HCResults.xlsx", sep = "/"),
  quiet = TRUE,
  mode = ifelse(.Platform$OS.type == "windows", "wb", "w")
)

# Read-in the IoC XLSX in "cleanventory" format

hcis <- cleanventory::read_hcis(
  path = paste(tmp, "HCResults.xlsx", sep = "/"),
  clean_non_ascii = TRUE
)

# Remove temporary file

file.remove(paste(tmp, "HCResults.xlsx", sep = "/"))

# Export the data as RDA

save(hcis, file = "data/hcis.rda")
tools::resaveRdaFiles(paths = "data/hcis.rda")

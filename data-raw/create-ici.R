# Setting up a temporary path and defining the URL from the official website:
# https://www.industrialchemicals.gov.au/search-inventory

tmp <- tempdir()

url <- paste(
  "https://www.industrialchemicals.gov.au/sites/default/files/2022-03",
  paste(
    "Full%20list%20of%20chemicals%20on%20the%20Inventory%20",
    "%2010%20February%202022.XLSX",
    sep = "-"
  ),
  sep = "/"
)

# Downloading the XLSX file to the temporary location

options(timeout = max(300, getOption("timeout")))

download.file(
  url = url,
  destfile = paste(
    tmp,
    paste(
      "Full list of chemicals on the Inventory",
      "10 February 2022.xlsx",
      sep = " - "
    ),
    sep = "/"
  ),
  quiet = TRUE,
  mode = ifelse(.Platform$OS.type == "windows", "wb", "w")
)

# Read-in the ICI XLSX in "cleanventory" format

ici <- cleanventory::read_ici(
  path = paste(
    tmp,
    paste(
      "Full list of chemicals on the Inventory",
      "10 February 2022.xlsx",
      sep = " - "
    ),
    sep = "/"
  ),
  clean_non_ascii = TRUE
)

# Remove temporary file

file.remove(
  paste(
    tmp,
    paste(
      "Full list of chemicals on the Inventory",
      "10 February 2022.xlsx",
      sep = " - "
    ),
    sep = "/"
  )
)

# Export the data as RDA

save(ici, file = "data/ici.rda")
tools::resaveRdaFiles(paths = "data/ici.rda")

# Setting up a temporary path and defining the URL from the official website:
# https://www.epa.govt.nz/industry-areas/hazardous-substances/
#   guidance-for-importers-and-manufacturers/hazardous-substances-databases/

tmp <- tempdir()

url <- paste(
  "https://www.epa.govt.nz/assets/Uploads/Documents/Hazardous-Substances",
  "Guidance/NZIOC_Full_Spreadsheet_December_2021.xlsx",
  sep = "/"
)

# Splitting the URL to retrieve the XLSX file name

url_split <- unlist(strsplit(url, split = "/"))

xlsx_file <- url_split[grepl(pattern = ".xlsx", url_split)]

# Downloading the ZIP file to the temporary location

download.file(
  url = url,
  destfile = paste(tmp, xlsx_file, sep = "/"),
  quiet = TRUE,
  mode = ifelse(.Platform$OS.type == "windows", "wb", "w")
)

# Read-in the IoC XLSX in "cleanventory" format

ioc <- cleanventory::read_ioc(
  path = paste(tmp, xlsx_file, sep = "/"),
  clean_non_ascii = TRUE,
  version = TRUE
)

# Remove temporary file

file.remove(paste(tmp, xlsx_file, sep = "/"))

# Export the data as RDA

save(ioc, file = "data/ioc.rda")
tools::resaveRdaFiles(paths = "data/ioc.rda")

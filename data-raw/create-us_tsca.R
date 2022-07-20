# Setting up a temporary path and defining the URL from the official website:
# https://www.epa.gov/tsca-inventory/how-access-tsca-inventory

url <- paste0(
  "https://www.epa.gov/system/files/other-files/2022-03/",
  "csv-non-cbi-tsca-inventory-022022.zip"
)

# Splitting the URL to retrieve the ZIP file name

url_split <- unlist(strsplit(url, split = "/"))

zip_file <- url_split[grepl(pattern = ".zip", url_split)]

# Downloading the ZIP file to the temporary location

download.file(
  url = url,
  destfile = paste("data-raw", zip_file, sep = "/"),
  quiet = TRUE,
  mode = ifelse(.Platform$OS.type == "windows", "wb", "w")
)

# Identify the TSCA CSV file name

zip_list <- unzip(
  zipfile = paste("data-raw", zip_file, sep = "/"),
  list = TRUE
)

file_name <- zip_list$Name[grepl(pattern = "TSCA", zip_list$Name)]

# Unzipping the TSCA CSV from the ZIP file

unzip(
  zipfile = paste("data-raw", zip_file, sep = "/"),
  files = file_name,
  exdir = "data-raw"
)

# Read-in the TSCA CSV in "cleanventory" format

us_tsca <- cleanventory::read_us_tsca(
  path = paste("data-raw", file_name, sep = "/")
)

# Remove temporary files

invisible(file.remove(paste("data-raw", zip_file, sep = "/")))

# Export the data as RDA

save(us_tsca, file = "data/us_tsca.rda")
tools::resaveRdaFiles(paths = "data/us_tsca.rda")

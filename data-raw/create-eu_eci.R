# Setting up a temporary path and defining the URL from the official website:
# https://echa.europa.eu/information-on-chemicals/ec-inventory

url <- paste0(
  "https://echa.europa.eu/documents/10162/17222/ec_inventory_en.csv/",
  "326d9adb-27ed-5460-a2da-4f651b81e4b3"
)

# Splitting the URL to retrieve the CSV file name

url_split <- unlist(strsplit(url, split = "/"))

file_name <- url_split[grepl(pattern = ".csv", url_split)]

options(timeout = max(300, getOption("timeout")))

download.file(
  url = url,
  destfile = paste("data-raw", file_name, sep = "/"),
  quiet = TRUE,
  mode = ifelse(.Platform$OS.type == "windows", "wb", "w")
)

# Read-in the EC CSV in "cleanventory" format

eu_eci <- cleanventory::read_eu_eci(
  path = paste("data-raw", file_name, sep = "/"),
  clean_non_ascii = TRUE
)

# Export the data as RDA

save(eu_eci, file = "data/eu_eci.rda")
tools::resaveRdaFiles(paths = "data/eu_eci.rda")

# Setting up a temporary path and defining the URL from the official website:
# https://www.nite.go.jp/chem/english/ghs/ghs_download.html

tmp <- tempdir()

url <- "https://www.nite.go.jp/chem/english/ghs/files/list_all_e.xlsx"

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

# Read-in the NITE XLSX in "cleanventory" format

jp_nite <- cleanventory::read_jp_nite(
  path = paste(tmp, xlsx_file, sep = "/"),
  clean_non_ascii = TRUE
)

# Remove temporary file

file.remove(paste(tmp, xlsx_file, sep = "/"))

# Export the data as RDA

save(jp_nite, file = "data/jp_nite.rda")
tools::resaveRdaFiles(paths = "data/jp_nite.rda")

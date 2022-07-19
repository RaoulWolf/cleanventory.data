# Setting up a temporary path and defining the URLs from the official websites:
# https://gazette2.nat.gov.tw/EG_FileManager/eguploadpub/eg021002/ch08/type3/gov82/num32/Eg.htm
# https://gazette2.nat.gov.tw/EG_FileManager/eguploadpub/eg021170/ch08/type3/gov82/num29/Eg.htm

tmp <- tempdir()

url_1 <- paste(
  "https://gazette2.nat.gov.tw/EG_FileManager/eguploadpub/eg021002/ch08/type3",
  "gov82/num32/images/Eg01.pdf",
  sep = "/"
)

url_2 <- paste(
  "https://gazette2.nat.gov.tw/EG_FileManager/eguploadpub/eg021170/ch08/type3",
  "gov82/num29/images/Eg01.pdf",
  sep = "/"
)

# Downloading the PDFs to the temporary location

download.file(
  url = url_1,
  destfile = paste(tmp, "Eg01_1.pdf", sep = "/"),
  quiet = TRUE,
  mode = ifelse(.Platform$OS.type == "windows", "wb", "w")
)

download.file(
  url = url_2,
  destfile = paste(tmp, "Eg01_2.pdf", sep = "/"),
  quiet = TRUE,
  mode = ifelse(.Platform$OS.type == "windows", "wb", "w")
)

# Read-in the TCSI PDFs in "cleanventory" format

tw_csi <- cleanventory::read_tw_csi(
  path = paste(tmp, "Eg01_1.pdf", sep = "/"),
  whitelist = "- 0123456789NP"
)

tw_csi_add <- cleanventory::read_tw_csi(
  path = paste(tmp, "Eg01_2.pdf", sep = "/"),
  whitelist = "- 0123456789CE"
)


# Remove temporary file

file.remove(
  paste(tmp, "Eg01_1.pdf", sep = "/"),
  paste(tmp, "Eg01_2.pdf", sep = "/")
)

# Export the data as RDA

save(tw_csi, file = "data/tw_csi.rda")
save(tw_csi_add, file = "data/tw_csi_add.rda")
tools::resaveRdaFiles(paths = "data/tw_csi.rda")
tools::resaveRdaFiles(paths = "data/tw_csi_add.rda")

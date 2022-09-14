# Setting up a temporary path and defining the URLs from the official website:
# https://echa.europa.eu/en/information-on-chemicals/annex-vi-to-clp

urls <- c(
  paste0(
    "https://echa.europa.eu/documents/10162/17218/",
    "annex_vi_clp_table_atp09_en.xlsx/",
    "7e62b5d4-ea9f-4671-8022-e52cdbe88c2a?t=1537522562541"
  ),
  paste0(
    "https://echa.europa.eu/documents/10162/17218/",
    "annex_vi_clp_table_atp10_en.xlsx/",
    "a4e1a93a-dac7-abc7-b106-7f63e877c3c8?t=1552581078113"
  ),
  paste0(
    "https://echa.europa.eu/documents/10162/17218/",
    "annex_vi_clp_table_atp13_en.xlsx/",
    "83d29faf-89e4-f140-2cff-481e1c2d7f9e?t=1553184240440"
  ),
  paste0(
    "https://echa.europa.eu/documents/10162/17218/",
    "annex_vi_clp_table_atp14_en.xlsx/",
    "c767afd2-4d53-b8d5-de2b-0820680cac95?t=1589980064047"
  ),
  paste0(
    "https://echa.europa.eu/documents/10162/17218/",
    "annex_vi_clp_table_atp15_en.xlsx/",
    "27c0e515-0da2-5eb0-b5ca-3ba8556f1f6a?t=1608304207954"
  ),
  paste0(
    "https://echa.europa.eu/documents/10162/17218/",
    "annex_vi_clp_table_atp17_en.xlsx/",
    "4dcec79c-f277-ed68-5e1b-d435900dbe34?t=1638888918944"
  )
)


# Splitting the URLs to retrieve the XLSX file names

urls_split <- unlist(strsplit(urls, split = "/"))

file_names <- urls_split[grepl(pattern = ".xlsx", urls_split)]

# Downloading the XLSX files to the temporary location

options(timeout = max(300, getOption("timeout")))

invisible(
  mapply(
    FUN = "download.file",
    url = urls,
    destfile = paste("data-raw/data", file_names, sep = "/"),
    MoreArgs = list(
      quiet = TRUE,
      mode = ifelse(.Platform$OS.type == "windows", "wb", "w")
    )
  )
)

# Read-in the CLP XLSX in "cleanventory" format

eu_clp <- lapply(
  paste("data-raw/data", file_names, sep = "/"),
  FUN = function(x) {
    cleanventory::read_eu_clp(x, clean_non_ascii = TRUE)
  }
)

eu_clp_09 <- eu_clp[[1]]
eu_clp_10 <- eu_clp[[2]]
eu_clp_13 <- eu_clp[[3]]
eu_clp_14 <- eu_clp[[4]]
eu_clp_15 <- eu_clp[[5]]
eu_clp_17 <- eu_clp[[6]]

# Export the data as RDA

save(eu_clp_09, file = "data/eu_clp_09.rda")
save(eu_clp_10, file = "data/eu_clp_10.rda")
save(eu_clp_13, file = "data/eu_clp_13.rda")
save(eu_clp_14, file = "data/eu_clp_14.rda")
save(eu_clp_15, file = "data/eu_clp_15.rda")
save(eu_clp_17, file = "data/eu_clp_17.rda")
tools::resaveRdaFiles(paths = "data/eu_clp_09.rda")
tools::resaveRdaFiles(paths = "data/eu_clp_10.rda")
tools::resaveRdaFiles(paths = "data/eu_clp_13.rda")
tools::resaveRdaFiles(paths = "data/eu_clp_14.rda")
tools::resaveRdaFiles(paths = "data/eu_clp_15.rda")
tools::resaveRdaFiles(paths = "data/eu_clp_17.rda")

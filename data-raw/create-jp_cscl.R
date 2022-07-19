# The three TSV files have to manually downloaded from the official website:
# https://www.nite.go.jp/en/chem/chrip/chrip_search/sltLst

# Read-in the CSCL TSV files in "cleanventory" format

jp_cscl_ecs <- cleanventory::read_jp_cscl(
  path = "../Japan CSCL_ Existing Chemical Substances.tsv",
  clean_non_ascii = TRUE
)

jp_cscl_nacs_1 <- cleanventory::read_jp_cscl(
  path = paste(
    "../Japan CSCL_ Newly Announced Chemical Substances",
    "(notified before March 31, 2011).tsv"
  ),
  clean_non_ascii = TRUE
)

jp_cscl_nacs_2 <- cleanventory::read_jp_cscl(
  path = paste(
    "../Japan CSCL_ Newly Announced Chemical Substances",
    "(notified on or after April 1, 2011).tsv"
  ),
  clean_non_ascii = TRUE
)

# Export the data as RDA

save(jp_cscl_ecs, file = "data/jp_cscl_ecs.rda")
save(jp_cscl_nacs_1, file = "data/jp_cscl_nacs_1.rda")
save(jp_cscl_nacs_2, file = "data/jp_cscl_nacs_2.rda")
tools::resaveRdaFiles(paths = "data/jp_cscl_ecs.rda")
tools::resaveRdaFiles(paths = "data/jp_cscl_nacs_1.rda")
tools::resaveRdaFiles(paths = "data/jp_cscl_nacs_2.rda")

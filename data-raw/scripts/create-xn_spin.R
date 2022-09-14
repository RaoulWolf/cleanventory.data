# The TSV files have to be manually downloaded from the official website:
# http://www.spin2000.net/spinmyphp/

# Read-in the SPIN TSV file in "cleanventory" format

xn_spin <- cleanventory::read_xn_spin(
  path = "data-raw/data/spin.tsv",
  clean_non_ascii = TRUE
)

# Export the data as RDA

save(xn_spin, file = "data/xn_spin.rda")
tools::resaveRdaFiles(paths = "data/xn_spin.rda")

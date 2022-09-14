# The CSV files have to be manually downloaded from the official website:
# https://www.epa.gov/chemical-data-reporting

# Read-in the CDR CSV files in "cleanventory" format

us_cdr_2016_ccu <- cleanventory::read_us_cdr(
  path = "data-raw/data/2016 CDR Consumer and Commercial Use.csv"
)

us_cdr_2016_iu <- cleanventory::read_us_cdr(
  path = "data-raw/data/2016 CDR Industrial Use.csv"
)

us_cdr_2016_mi <- cleanventory::read_us_cdr(
  path = "data-raw/data/2016 CDR Manufacturing Information.csv"
)

us_cdr_2016_napv <- cleanventory::read_us_cdr(
  path = "data-raw/data/2016 CDR National Aggregate Production Volume.csv"
)

us_cdr_2020_ccu <- cleanventory::read_us_cdr(
  path = "data-raw/data/2020 CDR Consumer and Commercial Use.csv"
)

us_cdr_2020_ipu <- cleanventory::read_us_cdr(
  path = "data-raw/data/2020 CDR Industrial Processing and Use.csv"
)

us_cdr_2020_mii <- cleanventory::read_us_cdr(
  path = "data-raw/data/2020 CDR Manufacturing-Import Information.csv"
)

us_cdr_2020_napv <- cleanventory::read_us_cdr(
  path = "data-raw/data/2020 CDR Nationally Aggregated Production Volumes.csv"
)

# Export the data as RDA

save(us_cdr_2016_ccu, file = "data/us_cdr_2016_ccu.rda")
save(us_cdr_2016_iu, file = "data/us_cdr_2016_iu.rda")
save(us_cdr_2016_mi, file = "data/us_cdr_2016_mi.rda")
save(us_cdr_2016_napv, file = "data/us_cdr_2016_napv.rda")
save(us_cdr_2020_ccu, file = "data/us_cdr_2020_ccu.rda")
save(us_cdr_2020_ipu, file = "data/us_cdr_2020_ipu.rda")
save(us_cdr_2020_mii, file = "data/us_cdr_2020_mii.rda")
save(us_cdr_2020_napv, file = "data/us_cdr_2020_napv.rda")
tools::resaveRdaFiles(paths = "data/us_cdr_2016_ccu.rda")
tools::resaveRdaFiles(paths = "data/us_cdr_2016_iu.rda")
tools::resaveRdaFiles(paths = "data/us_cdr_2016_mi.rda")
tools::resaveRdaFiles(paths = "data/us_cdr_2016_napv.rda")
tools::resaveRdaFiles(paths = "data/us_cdr_2020_ccu.rda")
tools::resaveRdaFiles(paths = "data/us_cdr_2020_ipu.rda")
tools::resaveRdaFiles(paths = "data/us_cdr_2020_mii.rda")
tools::resaveRdaFiles(paths = "data/us_cdr_2020_napv.rda")

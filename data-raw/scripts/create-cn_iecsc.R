# Because of special characters in the filename, the RAR file needs to be
# manually downloaded, unpacked, and the filename changed:
# https://www.mee.gov.cn/gkml/hbb/bgg/201301/t20130131_245810.htm

# Read-in the IECSC in "cleanventory" format

cn_iecsc <- cleanventory::read_cn_iecsc(
  path = paste("data-raw/data", "__2013__.pdf", sep = "/")
)

save(cn_iecsc, file = "data/cn_iecsc.rda")
tools::resaveRdaFiles(paths = "data/cn_iecsc.rda")

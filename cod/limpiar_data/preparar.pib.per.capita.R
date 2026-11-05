library(WDI)


df.pib <- WDI(
  country = "all",
  indicator = "NY.GDP.PCAP.CD",
  start = 2020,
  end = 2024
)

df.pib <- df.pib[!is.na(df.pib$NY.GDP.PCAP.CD), ]
df.pib <- df.pib[order(df.pib$iso3c, -df.pib$year), ]
df.pib <- df.pib[!duplicated(df.pib$iso3c), c("iso3c", "NY.GDP.PCAP.CD")]

colnames(df.pib) <- c("Codigo", "PIB.per.capita")



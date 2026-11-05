library(countrycode)


df.pm25 <- read.csv("../data/iqair_pm25_2024.csv")


# Código ISO para poder unir bases que escriben los países de forma diferente

df.pm25$Codigo <- countrycode(
  df.pm25$Pais,
  origin = "country.name",
  destination = "iso3c",
  custom_match = c(
    "D.R. Congo" = "COD",
    "Ivory Coast" = "CIV",
    "Bosnia Herzegovina" = "BIH",
    "Macao SAR" = "MAC",
    "Taiwan" = "TWN",
    "Hong Kong SAR" = "HKG",
    "USA" = "USA",
    "Russia" = "RUS",
    "Bolivia" = "BOL",
    "Moldova" = "MDA",
    "South Korea" = "KOR",
    "Laos" = "LAO",
    "Palestine" = "PSE",
    "Czech Republic" = "CZE",
    "U.S. Virgin Islands" = "VIR"
  )
)


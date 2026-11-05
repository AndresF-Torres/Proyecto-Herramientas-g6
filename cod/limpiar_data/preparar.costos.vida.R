library(readxl)
library(countrycode)

df.costos <- read_excel("../data/Costo de vida y alquiler .xlsx")


df.costos$Codigo <- countrycode(
  df.costos$Pais,
  origin = "country.name.es",
  destination = "iso3c"
)


ajustes.costos <- c(
  "Estados Unidos" = "USA",
  "Corea del Sur" = "KOR",
  "República Checa" = "CZE",
  "Rusia" = "RUS",
  "Bolivia" = "BOL",
  "Moldavia" = "MDA",
  "Costa de Marfil" = "CIV",
  "Bosnia y Herzegovina" = "BIH",
  "Hong Kong" = "HKG",
  "Macao" = "MAC",
  "Palestina" = "PSE"
)

for (nombre in names(ajustes.costos)) {
  df.costos$Codigo[df.costos$Pais == nombre] <- ajustes.costos[[nombre]]
}

df.costos <- df.costos |>
  select(
    Codigo,
    `Indice de Costo de Vida`,
    `Indice de Alquiler`
  )

colnames(df.costos) <- c(
  "Codigo",
  "Indice.costo.vida",
  "Indice.alquiler"
)


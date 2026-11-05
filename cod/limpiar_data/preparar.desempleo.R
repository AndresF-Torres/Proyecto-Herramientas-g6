library(WDI)

df.desempleo <- WDI(
  country = "all",
  indicator = "SL.UEM.TOTL.ZS",
  start = 2020,
  end = 2024
)

df.desempleo <- df.desempleo[!is.na(df.desempleo$SL.UEM.TOTL.ZS), ]
df.desempleo <- df.desempleo[order(df.desempleo$iso3c, -df.desempleo$year), ]
df.desempleo <- df.desempleo[!duplicated(df.desempleo$iso3c), c("iso3c", "SL.UEM.TOTL.ZS")]

colnames(df.desempleo) <- c("Codigo", "Desempleo")






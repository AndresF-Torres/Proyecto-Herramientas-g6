df.seguridad <- read.csv(
  "https://ourworldindata.org/grapher/homicide-rate-unodc.csv?v=1&csvType=full&useColumnShortNames=false"
)


df.seguridad <- df.seguridad[!is.na(df.seguridad$Code) &
                               nchar(df.seguridad$Code) == 3 &
                               !is.na(df.seguridad[, 4]), ]

# Dato más reciente disponible para cada país

df.seguridad <- df.seguridad[order(df.seguridad$Code, -df.seguridad$Year), ]

df.seguridad <- df.seguridad[!duplicated(df.seguridad$Code), c("Code", names(df.seguridad)[4])]

colnames(df.seguridad) <- c("Codigo", "Tasa.homicidios")


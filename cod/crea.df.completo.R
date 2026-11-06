library(dplyr)
library(purrr)
source("limpiar_data/preparar.costos.vida.R")
source("limpiar_data/preparar.desempleo.R")
source("limpiar_data/preparar.escolaridad.R")
source("limpiar_data/preparar.esperanza.vida.R")
source("limpiar_data/preparar.pib.per.capita.R")
source("limpiar_data/preparar.pm25.R")
source("limpiar_data/preparar.tasa.homicidios.R")




# se guardar todas las tablas en una lista
lista.tablas <- list(df.pm25,
                     df.costos,
                     df.desempleo,
                     df.escolaridad,
                     df.pib,
                     df.seguridad,
                     df.vida)

# Unirlas todas a la vez por la columna común "Codigo"
df.final <- lista.tablas %>%
  reduce(left_join, by = "Codigo")


df.final <- df.final |>
  select(
    Pais,
    PM25,
    Tasa.homicidios,
    PIB.per.capita,
    Desempleo,
    Esperanza.de.vida,
    Anios.escolaridad,
    Indice.costo.vida,
    Indice.alquiler
  )


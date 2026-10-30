library(topsis)
library(dplyr)

calcular.ranking.topsis <- function(datos, pesos, direcciones){
  
  variables.a.evaluar <- names(pesos)
  
  matriz.decision <- as.matrix(datos[, variables.a.evaluar])
  
  vector.pesos <- as.numeric(pesos)
  vector.direcciones <- as.character(direcciones)
  
  resultado.topsis <- topsis(matriz.decision, vector.pesos, vector.direcciones)
  
  ranking.final <- datos %>%
    mutate(
      Puntaje.TOPSIS = resultado$score,
      Ranking = rank(-Puntaje.TOPSIS, ties.method = "min")
    ) %>%
    arrange(Ranking) %>%
    select(Pais, Puntaje.TOPSIS, Ranking)
  
  return(ranking.final)
}

# los datos tienen que ser los datos ya limpios por limpiar.datos.topsis
# pesos es un vector de la forma: pesos <- c(PM25 = 0.10, Tasa.homicidios = 0.20, PIB.per.capita = 0.20,...)
# en el vector pesos se le asigna un peso a las variables que se quieren evaluar, por si a alguna persona que le interese el ranking
# le es irrelevante por ejemplo los anios de escolaridad
# todos los pesos deben sumar 1
# direcciones es un vector de la forma: direcciones <- (PM25 = "-", Tasa.homicidios = "-", PIB.per.capita = "+", Desempleo = "-"...)
# se le asigna "-" a las variables que el pais ideal quiere tener la menor  y "+" a las que el pais ideal quiere tener alto
# solo se le asigna una direccion a aquellas variables que tambien tengan peso

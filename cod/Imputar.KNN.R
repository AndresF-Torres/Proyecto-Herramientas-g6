Imputar.KNN <- function(df) {
  
  variables <- names(df)[sapply(df, is.numeric)]
  
  original <- df
  
  matriz <- scale(df[, variables])
  
  for (i in seq_len(nrow(df))) {
    
    faltantes <- variables[
      is.na(original[i, variables])
    ]
    
    for (variable in faltantes) {
      
      candidatos <- which(
        !is.na(original[[variable]]) &
          seq_len(nrow(df)) != i
      )
      
      distancias <- sapply(candidatos, function(j) {
        
        comunes <- setdiff(variables, variable)
        
        comunes <- comunes[
          !is.na(matriz[i, comunes]) &
            !is.na(matriz[j, comunes])
        ]
        
        if (length(comunes) <3) {
          return(Inf)
        }
        
        sqrt(mean(
          (matriz[i, comunes] - matriz[j, comunes])^2
        ))
      })
      
      orden <- order(distancias)
      vecinos <- candidatos[orden[is.finite(distancias[orden])]]
      
      if (length(vecinos) < 5) {
        next
      }
      
      vecinos <- head(vecinos, 5)
      
      df[[variable]][i] <- mean(
        original[[variable]][vecinos]
      )
    }
  }
  
  return(df)
}
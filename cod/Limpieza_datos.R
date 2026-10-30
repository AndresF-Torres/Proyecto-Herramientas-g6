limpiar.datos.topsis <- function(datos){
  datos.limpios <- datos |> 
    dplyr::mutate(across(where(is.numeric), ~replace_na(., median(., na.rm = TRUE))))
  
  return (datos.limpios)
}

## funcion que prepara la tabla para el topsis
## nota, podemos cambiar el metodo de imputacion,por ahora lo hice con la mediana


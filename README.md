# Proyecto grupal: Herramientas de ciencia de datos I. 

Este proyecto compara las condiciones de vida de distintos países mediante ocho indicadores socioeconómicos, ambientales y de bienestar. Su propósito es estudiar cómo cambian las clasificaciones de países cuando un usario asigna diferentes niveles de importancia a los indicadores
El trabajo integra datos sobre más de 100 paises, de distintas fuentes internacionales. Tambien se realiza un análisis exploratorio de los datos, trata los valores faltantes mediante imputación por vecinos más cercanos y aplica el método TOPSIS para realizar la comparativa entre los distintos países.

## Indicadores utilizados

Contaminación del aire (PM2.5)
Tasa de homicidios
PIB per cápita
Desempleo
Esperanza de vida
Años promedio de escolaridad
Índice de costo de vida
Índice de alquiler

## Archivos principales

Se crearon los siguientes archivos en el repositorio, cada uno con su propia función.

Avance3.qmd: Informe y resultados del proyecto
crea.df.completo.R: Integración y preparación de las bases
Imputar.KNN.R: Imputación de datos faltantes
Funcion_topsis.R: Cálculo de clasificaciones TOPSIS
data/iqair_pm25_2024.csv: Datos de contaminación PM2.5
data/e.de.vida.csv: Datos de esperanza de vida
data/escolaridad.csv: Datos de escolaridad
data/Costo de vida y alquiler .xlsx: Índices de costo de vida y alquiler

## Resultados principales

Se descubrio que no existe ningún país que sea el mejor en cada métrica. Es más, los países que salían en mejores posiciones en cierta cualidad, solían tener una baja posición en las demás. Es decir, cada país tiene sus ventajas y desventajas, mientras que un cambio en los pesos asignados a cada variable influye sustancialmente en la calificación y el ranking de un país.

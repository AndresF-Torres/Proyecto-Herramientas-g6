# Proyecto grupal: Herramientas de ciencia de datos I. 

Estudiantes:

Priscilla Ramírez Ramírez

Santiago Jara Vargas

Luis Alfredo Odio Sanabria

Sebastián Aguilar Pineda

Andrés Francisco Torres Moraga

## Resumen

Este proyecto compara las condiciones de vida de distintos países mediante ocho indicadores socioeconómicos, ambientales y de bienestar. Su propósito es estudiar cómo cambian las clasificaciones de países cuando un usario asigna diferentes niveles de importancia a los indicadores
El trabajo integra datos sobre más de 100 paises, de distintas fuentes internacionales. Tambien se realiza un análisis exploratorio de los datos, trata los valores faltantes mediante imputación por vecinos más cercanos y aplica el método TOPSIS para realizar la comparativa entre los distintos países.

Originalmente, las fuentes utilizadas contaban con bases heterogéneas sobre cada indicador utilizado. Por lo tanto, fue necesario seleccionar una lista de países de modo que cada base contuviera a la lista, homogeneizando la base. Luego, para los valores faltantes, se utilizó un método de imputación mediante los cinco valores más cercanos.
Una vez hecha la imputación, se utiliza el método TOPSIS (Technique for Order Preferenceby Similarity to Ideal Solution), el cual, basado en los indicadores que se desean maximizar y minimizar ante un país ideal que cumple con las condiciones deseadas, permite generar una lista ordenada con los países que mejor cumplen con la descripción.

Una vez realizado esto, se obtuvo que, ante distintas ponderaciones sobre la importancia de los indicadores, se pueden obtener distintos países del mundo como mejor candidato. Además, no existe un país perfecto que sea el mejor en todas, sino que existe amplia variedad de resultados.

## Detalles para correr el proyecto

1. Abra el documento cod/Grupo_6_HerramientasDatosI_2026.qmd

2. Descargue las librerías siguientes:

```
library(dplyr)
library(readxl)
library(WDI)
library(countrycode)
library(ggplot2)
library(tidyr)
library(scales)
library(knitr)
library(kableExtra)
```
3. Renderice el documento en R studio.

4. Para más información sobre el proyecto, se puede consultar el archivo info/info.md

## Indicadores utilizados

* Contaminación del aire (PM2.5)

* Tasa de homicidios

* PIB per cápita

* Desempleo

* Esperanza de vida

* Años promedio de escolaridad

* Índice de costo de vida

* Índice de alquiler

## Archivos principales

Se crearon los siguientes archivos en el repositorio, cada uno con su propia función.

Avance 2 - Grupo 6.Rproj: archivo de proyecto de R

Dentro de la carpeta cod:

* cod/Avance 1 y 2.qmd: Avances 1 y 2 del proyecto

* cod/Grupo_6_HerramientasDatosI_2026.qmd: Informe y resultados del proyecto

* cod/crea.df.completo.R: Integración y preparación de las bases

* cod/Imputar.KNN.R: Imputación de datos faltantes

* cod/Funcion_topsis.R: Cálculo de clasificaciones TOPSIS

Dentro de la carpeta data:

* data/iqair_pm25_2024.csv: Datos de contaminación PM2.5

* data/e.de.vida.csv: Datos de esperanza de vida

* data/escolaridad.csv: Datos de escolaridad

* data/Costo de vida y alquiler .xlsx: Índices de costo de vida y alquiler

Dentro de la carpeta info:

* info/info.md: Información sobre variables utilizadas y sus respectivas fuentes

Dentro de la carpeta res:

* res/Avance-1-y-2.pdf: PDF con los avances 1 y 2 del proyecto.

* res/AvanceUno.pdf: PDF con el primer avance.

* res/Grupo_6_HerramientasDatosI_2026.pdf: PDF final generado en el tercer avance.

## Resultados principales

Se descubrió que no existe ningún país que sea el mejor en cada métrica. Es más, los países que salían en mejores posiciones en cierta cualidad, solían tener una baja posición en las demás. 
Es decir, cada país tiene sus ventajas y desventajas, mientras que un cambio en los pesos asignados a cada variable influye sustancialmente en la calificación y el ranking de un país.

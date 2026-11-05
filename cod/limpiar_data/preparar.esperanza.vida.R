
df.vida <- read.csv("../data/e.de.vida.csv")

df.vida <- df.vida[!is.na(df.vida$X2024) &
                     df.vida$Country.Name != "", c("Country.Code", "X2024")]

colnames(df.vida) <- c("Codigo", "Esperanza.de.vida")


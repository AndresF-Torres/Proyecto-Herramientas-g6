
df.escolaridad <- read.csv("../data/escolaridad.csv")

df.escolaridad <- df.escolaridad[df.escolaridad$Year == 2023 &
                                   df.escolaridad$Code != "", c("Code", "Both.genders")]

colnames(df.escolaridad) <- c("Codigo", "Anios.escolaridad")



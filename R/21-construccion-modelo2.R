# 21-construccion-modelo.R

library(here)
source(here::here("R","10-Cargar-librerias.R"))

datos <- readRDS(here::here("data", "data0.RDS"))
requ <- readRDS(here::here("data", "requ0.RDS"))

# 21-construccion elementos del modelo1
# vector de precios
precios = datos$Serving
a=c(6,rep(7:22, each = 2))
# matriz de composicion de alimentos
       # not the same.


A = datos[,a] %>% 
      as.matrix() %>% 
      t() 

# nombre alimentos
alimentos=datos$Alimento

# signos de restricciones
constr_signs = c(">=", 
                 ">=","<=",
                 ">=","<=",
                 ">=","<=",
                 ">=","<=",
                 ">=","<=",
                 ">=","<=",
                 ">=","<=",
                 ">=","<=",
                 ">=","<=",
                 ">=","<=",
                 ">=","<=",
                 ">=","<=",
                 ">=","<=",
                 ">=","<=",
                 ">=","<=",
                 ">=","<=")


# requerimientos mínimos
#  requerimientos para hombre 19-30 años - columna 7 de requ
#  requerimientos minimos
B = requ





# 10-Cargar-base-datos.R     Datos_simulacion.xls -> data0.RDS

library(here)
source(here::here("R","10-Cargar-librerias.R"))

data0 <- read_excel("data/Datos_simulación.xlsx", sheet = "data")
requ0 <- read_excel("data/Datos_simulación.xlsx", sheet = "restricciones")

# se ajustan los nombre de las variables
names(data0) <- c("Cod_TCAC", "Alimento", "Serving", "Alimento_TCAC",    
                   "Precio_100g_ajust",  "Energia","Proteina","Carbohidratos", 
                  "Lipidos",  "Calcio",  "Zinc", "Hierro", "Magnesio","Fosforo",
                  "VitaminaC", "Tiamina", "Riboflavina","Niacina", "Folatos",
                  "VitaminaB12", "VitaminaA","Sodio")

# se crea variable grupo 
data0$grupo <- substr(data0$Cod_TCAC, start = 1, stop = 1)    # Para extraer el primer caracter.

# se guarda base data0.RDS
saveRDS(data0, here::here("data","data0.RDS"))
saveRDS(requ0, here::here("data","requ0.RDS"))


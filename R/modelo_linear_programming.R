###########################
##  Código: modelo de    ##
##  programación lineal  ##
###########################

install.packages("lpSolve")
install.packages("Rglpk")
install.packages("Rsymphony")
install.packages("scatterplot3d")
library(lpSolve)
library(Rglpk)
library(Rsymphony)
library(scatterplot3d)

#######################
## Subsection 2.2.2. ##
#######################

#Problema en forma matricial
c_t = c(20, 60)
A = matrix(c(30, 20, 5, 10,1,1), nrow = 3, ncol = 2, byrow = TRUE)
constr_signs = c("<=", "<=", ">=")
b = c(2700, 850, 95)

#Solución óptima
opt_sol = lp(direction = "max",
             objective.in = c_t,
             const.mat = A,
             const.dir = constr_signs,
             const.rhs = b,
             compute.sens = TRUE)

#Descripción de la solución

print(opt_sol$objval)   #valor óptimo de la función objetivo
print(opt_sol$solution) #valores de las variables de elección
print(opt_sol$duals)    

#Análisis de sensibilidad
opt_sol$duals.from
opt_sol$duals.to
opt_sol$sens.coef.from
opt_sol$sens.coef.to


############################################
############################################
## Ejemplo de Briend et al. (2003, p. 18) ##
############################################
############################################

c_t = c(5, 7.5, 10, 15)

A = matrix(c(181, 33, 155.5, 78.5,
             4.05, 1.6, 12.05, 9.05,
             3, 57.5, 25.5, 7,
             1.75, 0.05, 4.4, 4.25,
             1, 0, 0, 0,
             0, 1, 0, 0,
             0, 0, 1, 0,
             0, 0, 0, 1), nrow = 8, ncol = 4, byrow = TRUE)

constr_signs = c("=", ">=", ">=", ">=", "<=", "<=", "<=","<=")

b = c(746, 5, 196, 11.8, 20, 20, 1.2, 1.2)

opt_sol_briend = lp(direction = "min",
                    objective.in = c_t,
                    const.mat = A,
                    const.dir = constr_signs,
                    const.rhs = b,
                    compute.sens = TRUE)

opt_sol_briend$objval #Valor óptimo de la función objetivo
opt_sol_briend$solution


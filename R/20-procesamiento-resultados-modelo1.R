# 20-procesamiento-resultados-modelo1.R

# solucion optima
opt_sol = lp(direction = "min",
             objective.in = precios,
             const.mat = A,
             const.dir = constr_signs,
             const.rhs = B,
             compute.sens = TRUE)


# Descripcion de la solucion
print(opt_sol$objval)   # valor optimo de la funcion objetivo



print(opt_sol$solution) # valores de las variables de eleccion

# solucion1 <- cbind(alimentos,opt_sol$solution)
solucion1


print(opt_sol$duals)  

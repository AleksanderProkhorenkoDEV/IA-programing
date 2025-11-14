
# ---------------------------------------------------------------------
# Ejercicio 6: Función con argumentos por defecto y validación
# Enunciado:
#   Defina una función escalar(x, factor = 1) que multiplique un vector numérico
#   por 'factor'. Valide que x sea numérico y que factor sea escalar finito;
#   en caso contrario lance error con stop().

escalar <- function(x, factor = 1){
  
  if(!is.numeric(x)) stop("The x value need be numeric")
  if(!is.finite(factor) || !is.numeric(factor) || length(factor) != 1 ) stop("The factor value need be finite, escalar and numeric")
  
  x * factor
}

escalar(c(1, 2, 3), 2)        
escalar(c(1, 2, 3))           
escalar(1:10, 0.5) 

escalar(c("a", "b"), 2)       
escalar(1:5, c(1, 2))         
escalar(1:5, NA)              
escalar(1:5, Inf)             


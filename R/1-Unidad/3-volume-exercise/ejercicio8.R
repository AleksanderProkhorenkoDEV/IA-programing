# ---------------------------------------------------------------------
# Ejercicio 8: Función de orden superior (recibe otra función)
# Enunciado:
#   Defina aplicar2(x, f) que aplique una función 'f' elemento a elemento
#   sobre 'x'. Valide que 'f' sea una función. Devuelva el mismo tipo que sapply.

aplicar2 <- function(x, f){
  if(!is.function(f)) stop("The param f, need be a function")
  
  sapply(x, f)
}


aplicar2(c(1, 2, 3), function(x) x * 2)
aplicar2(c(1, 2, 3), function(x) if(x > 1) "mayor" else "menor")

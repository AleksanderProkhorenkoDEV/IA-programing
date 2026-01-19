# ---------------------------------------------------------------------
# Ejercicio 10: Recursión (factorial) con control de errores
# Enunciado:
#   Escriba factorial_r(n) recursivo que:
#     - Lance error si n no es entero no negativo.
#     - Use caso base para n==0 o n==1.

factorial_r <- function(n){
  if(!is.numeric(n) || n < 0) stop ("The n need be integer and positive")
  
  if (n == 0 || n == 1) {
    return(1)
  }
  
  n * factorial_r(n - 1)
  
}

factorial_r(5)

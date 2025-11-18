
# ---------------------------------------------------------------------
# Ejercicio 9: Clausuras (closures)
# Enunciado:
#   Implemente fabrica_suma(k) que devuelva una función g(x) = x + k,
#   capturando el valor de k en el entorno.

fabrica_suma <- function(k){
  g <- function(x){
    x + k
  }
}

suma <- fabrica_suma(5)
suma(6)

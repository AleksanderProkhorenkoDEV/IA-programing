# ----------------------------------------------------------------
# Ejercicio 15: Funciones vectorizadas con sapply / vapply
# ** Es necesario explicar las funciones vectorizadas
# Enunciado:
#   Cree un vector
#     x <- c(-2, 4, -6, 8, -10)
#   Aplique una función anónima que devuelva el valor absoluto multiplicado
#   por 2 para cada elemento, usando sapply() o vapply().

x <- c(-2, 4, -6, 8, -10)

anonFun = function(v){
  abs(v) * 2
}
sapply(x, anonFun)

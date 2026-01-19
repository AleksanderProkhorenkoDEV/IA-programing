# ----------------------------------------------------------------
# Ejercicio 16: Función normalizar() (0–1) y prueba con runif
# ** Es necesario explicar funciones, estructura if y generación de aleatorios
# Enunciado:
#   Defina una función `normalizar()` que reciba un vector numérico y devuelva
#   su versión normalizada entre 0 y 1:
#     x' = (x - min(x)) / (max(x) - min(x))
#   Pruebe su funcionamiento con un vector aleatorio generado con
#   runif(10, min=50, max=100).

vector <- runif(10, min=50, max=100)

normalizar <- function(x) {
  return (x - min(x)) / (max(x) - min(x))
}
normalizar(vector)

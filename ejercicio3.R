# ----------------------------------------------------------------
# Ejercicio 3: Reemplazo condicional
# Enunciado:
#   A partir del mismo vector `temperaturas`, reemplace todos los valores
#   menores que 18 por NA y muestre el resultado.

temperaturas <- c(15, 22, 18, 30, 25, 10, 28, 19, 16, 33)
temperaturas[temperaturas < 18] <- NA

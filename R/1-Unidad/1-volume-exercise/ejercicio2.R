# ----------------------------------------------------------------
# Ejercicio 2: Filtrado condicional múltiple
# Enunciado:
#   Cree un vector `temperaturas` con los valores:
#   c(15, 22, 18, 30, 25, 10, 28, 19, 16, 33)
#   Obtenga un nuevo vector con las temperaturas entre 18 y 28 grados,
#   ambos inclusive.

temp <- c(15, 22, 18, 30, 25, 10, 28, 19, 16, 33)
temHotter <- temp[temp >= 18 & temp <= 28]

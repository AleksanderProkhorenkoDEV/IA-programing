# ----------------------------------------------------------------
# Ejercicio 12: Funciones aplicadas a subconjuntos
# ** Es necesario explicar los if en linea
# Enunciado:
#   Dado un vector
#     notas <- c(7, 4, 9, 5, 6, 10, 8, 3, 5, 9)
#   calcule la media de las notas aprobadas (>= 5) y la media de las
#   suspensas (< 5) usando únicamente indexado y funciones básicas.

notas <- c(7, 4, 9, 5, 6, 10, 8, 3, 5, 9)
mean(notas[notas >= 5])
mean(notas[notas < 5])

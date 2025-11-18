# ----------------------------------------------------------------
# Ejercicio 7: Operaciones vectoriales combinadas (margen %)
# Enunciado:
#   Cree dos vectores:
#     ventas <- c(120, 150, 100, 180, 200)
#     costes <- c(80, 90, 70, 110, 130)
#   Calcule el beneficio porcentual de cada elemento y guárdelo en
#   un nuevo vector `margen`.

ventas <- c(120, 150, 100, 180, 200)
costes <- c(80, 90, 70, 110, 130)

margen <- ((ventas - costes) / ventas )  * 100

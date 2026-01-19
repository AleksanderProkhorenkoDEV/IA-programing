# ----------------------------------------------------------------
# Ejercicio 4: Estadísticos personalizados (sin mean() ni sd())
# Enunciado:
#   Calcule, sin usar mean() ni sd(), la media y la desviación estándar
#   de `temperaturas`, empleando operaciones vectoriales básicas y
#   funciones como sum() y length().

temp <- c(15, 22, 18, 30, 25, 10, 28, 19, 16, 33)

media <- sum(temp) / length(temp)
desviacion <- sqrt(sum(temp^2) / (length(temp) - 1) - (sum(temp)^2) / (length(temp) * (length(temp) - 1)))

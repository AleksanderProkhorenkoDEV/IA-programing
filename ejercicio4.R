# ----------------------------------------------------------------
# Ejercicio 4: Estadísticos personalizados (sin mean() ni sd())
# Enunciado:
#   Calcule, sin usar mean() ni sd(), la media y la desviación estándar
#   de `temperaturas`, empleando operaciones vectoriales básicas y
#   funciones como sum() y length().

temperaturas <- c(15, 22, 18, 30, 25, 10, 28, 19, 16, 33)

# Calcular la media de los datos
# media <- sum(temperaturas)  / length(temperaturas)
# Restar la media a cada punto + hacer el cuadrado del resultado
# resta <- (temperaturas - media) ^ 2
# suma <- sum(resta)
# muestra <- suma / (length(temperaturas) - 1)
# desviacion <- sqrt(muestra)


desviacion <- sqrt(sum((temperaturas - (sum(temperaturas)/length(temperaturas)))^2) / (length(temperaturas) - 1))

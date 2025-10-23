# ----------------------------------------------------------------
# Ejercicio 6: Transformación lineal (tipificación)
# Enunciado:
#   Transforme el vector x <- 1:6 para que tenga media 0 y desviación
#   estándar 1 (tipificación).

x <- 1:6
tipificacion <- (x - mean(x)) / sd(x)

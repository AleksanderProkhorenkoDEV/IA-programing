# ----------------------------------------------------------------
# Ejercicio 14: Creación dinámica, concatenación, orden y únicos
# Enunciado:
#   Cree tres vectores:
#     v1 <- 1:4
#     v2 <- seq(10, 40, by = 10)
#     v3 <- rep(5, 3)
#   Concatene los tres en un único vector `v_total`, ordénelo de forma
#   descendente y elimine los duplicados.

v1 <- 1:4
v2 <- seq(10, 40, by = 10)
v3 <- rep(5, 3)

v_total <- unique(sort(c(v1, v2, v3), decreasing = TRUE))
# Otra forma más optima, porque no ordenamos lo repetido
# v_total <- sort(unique(c(v1, v2, v3)), decreasing = TRUE)


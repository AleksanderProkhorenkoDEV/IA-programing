# Ejercicio 8: Indexado con vectores lógicos (mayores que la media)
# Enunciado:
#   Cree un vector
#     edades <- c(22, 34, 29, 41, 18, 55, 23, 37)
#   Obtenga las edades que sean mayores que la media del vector.

edades <- c(22, 34, 29, 41, 18, 55, 23, 37)
edades[mean(edades) < edades]

# Si quisieramos convertir en NaN los que son menores

edades[mean(edades) > edades] <- NA

# ----------------------------------------------------------------
# Ejercicio 13: Sustitución sin ifelse
# Enunciado:
#   Dado x <- c(4, 9, NA, 16, NA), sustituya los valores NA por la
#   media de los elementos no nulos.
# Solución:

x <- c(4, 9, NA, 16, NA)
vectorSinNA <- x[!is.na(x)]
x[is.na(x)] <- mean(vectorSinNA) 
print(x)

# mean(x, na.rm = TRUE) Otra forma de hacerlo sin filtrar los NA

# ---------------------------------------------------------------------
# Ejercicio 7: Función que devuelve múltiples valores (lista)
# Enunciado:
#   Defina una función resumen_num(x) que devuelva una lista con
#   minimo, maximo, media y sd de un vector numérico, ignorando NA.


resum_num <- function(x){
  list(
    min = min(x,na.rm = TRUE),
    max = max(x,na.rm = TRUE),
    mean = mean(x,na.rm = TRUE),
    sd = sd(x,na.rm = TRUE)
  )
}

datos <- c(1, 5, 3, 8, 2, NA, 4)
resum_num(datos)
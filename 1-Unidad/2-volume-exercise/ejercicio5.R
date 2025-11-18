# ----------------------------------------------------------------
# Ejercicio 5: Reordenación por una columna
# Enunciado:
#   Ordene df_alumnos de mayor a menor nota.
#   Guarde el resultado en df_ordenado.

nombre  = c("Ana", "Luis", "Marta", "Jorge", "Eva")
edad    = c(22, 25, 24, 23, 27)
nota    = c(8.5, 6.0, 9.2, 4.8, 7.5)

df_alumnos <- data.frame(nombre=nombre, edad=edad, nota=nota)

df_ordenado <- df_alumnos[order(df_alumnos$nota, decreasing=TRUE),]

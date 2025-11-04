# ----------------------------------------------------------------
# Ejercicio 3: Selección de columnas
# Enunciado:
#   Extraiga únicamente las columnas nombre y nota
#   en un nuevo data frame df_notas.

nombre  = c("Ana", "Luis", "Marta", "Jorge", "Eva")
edad    = c(22, 25, 24, 23, 27)
nota    = c(8.5, 6.0, 9.2, 4.8, 7.5)

df_alumnos <- data.frame(nombre=nombre, edad=edad, nota=nota)
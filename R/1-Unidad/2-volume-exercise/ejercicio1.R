# ----------------------------------------------------------------
# Ejercicio 1: Creación de un data frame
# Enunciado:
#   Cree un data frame llamado df_alumnos con las columnas:
#     nombre  = c("Ana", "Luis", "Marta", "Jorge", "Eva")
#     edad    = c(22, 25, 24, 23, 27)
#     nota    = c(8.5, 6.0, 9.2, 4.8, 7.5)
#   Asegúrese de que 'nombre' sea carácter y no factor.

nombre  = c("Ana", "Luis", "Marta", "Jorge", "Eva")
edad    = c(22, 25, 24, 23, 27)
nota    = c(8.5, 6.0, 9.2, 4.8, 7.5)

df_alumnos <- data.frame(nombre=nombre, edad=edad, nota=nota)

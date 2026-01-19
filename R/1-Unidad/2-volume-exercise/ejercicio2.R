# ----------------------------------------------------------------
# Ejercicio 2: Selección de filas por condición
# Enunciado:
#   Obtenga las filas de df_alumnos correspondientes
#   a estudiantes con nota >= 7.

nombre  = c("Ana", "Luis", "Marta", "Jorge", "Eva")
edad    = c(22, 25, 24, 23, 27)
nota    = c(8.5, 6.0, 9.2, 4.8, 7.5)

df_alumnos <- data.frame(nombre=nombre, edad=edad, nota=nota)

columnaNotas <- df_alumnos[df_alumnos$nota >= 7,]


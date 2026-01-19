# ----------------------------------------------------------------
# Ejercicio 6: Filtrado combinado
# Enunciado:
#   Seleccione las filas de df_alumnos donde:
#     - aprobado == TRUE
#     - edad es estrictamente mayor que 23
#   Guarde el resultado en df_filtrado.

nombre  = c("Ana", "Luis", "Marta", "Jorge", "Eva")
edad    = c(22, 25, 24, 23, 27)
nota    = c(8.5, 6.0, 9.2, 4.8, 7.5)

df_alumnos <- data.frame(nombre=nombre, edad=edad, nota=nota)
df_alumnos$aprobado <- df_alumnos$nota >= 5
df_filtrado <- subset(df_alumnos, aprobado == TRUE & edad > 23)

                      
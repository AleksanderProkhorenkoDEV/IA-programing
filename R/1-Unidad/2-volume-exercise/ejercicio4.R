# ----------------------------------------------------------------
# Ejercicio 4: Nueva columna calculada
# Enunciado:
#   Añada a df_alumnos una columna llamada "aprobado"
#   que valga TRUE si nota >= 5 y FALSE en caso contrario.

nombre  = c("Ana", "Luis", "Marta", "Jorge", "Eva")
edad    = c(22, 25, 24, 23, 27)
nota    = c(8.5, 6.0, 9.2, 4.8, 7.5)

df_alumnos <- data.frame(nombre=nombre, edad=edad, nota=nota)

df_alumnos$aprobado <- df_alumnos$nota >= 5
df_alumnos

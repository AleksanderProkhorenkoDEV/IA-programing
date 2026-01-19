# ----------------------------------------------------------------
# Ejercicio 7: Estadísticos agrupados "a mano"
# Enunciado:
#   Suponga que cada alumno pertenece a un grupo:
#     grupo = c("A", "A", "B", "B", "A")
#   Añada esta columna a df_alumnos y calcule la nota media por grupo
#   usando tapply().

nombre  <- c("Ana", "Luis", "Marta", "Jorge", "Eva")
edad    <- c(22, 25, 24, 23, 27)
nota    <- c(8.5, 6.0, 9.2, 4.8, 7.5)
grupo   <- c("A", "A", "B", "B", "A")

df_alumnos <- data.frame(nombre=nombre, edad=edad, nota=nota, grupo=grupo)
df_alumnos$aprobado <- df_alumnos$nota >= 5

tapply(df_alumnos$nota, df_alumnos$grupo, mean)

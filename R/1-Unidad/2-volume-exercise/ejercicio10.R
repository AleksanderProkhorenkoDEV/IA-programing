# ----------------------------------------------------------------
# Ejercicio 10: Resumen estadístico columna a columna
# Enunciado:
#   Usando df_alumnos (con las columnas edad y nota),
#   calcule para cada columna numérica:
#     mínimo, máximo, media y sd.
#   Hágalo usando sapply() sobre un subconjunto numérico del data frame.
# Solución:

nombre  = c("Ana", "Luis", "Marta", "Jorge", "Eva")
edad    = c(22, 25, 24, 23, 27)
nota    = c(8.5, 6.0, 9.2, 4.8, 7.5)
grupo   = c("A", "A", "B", "B", "A")

df_alumnos <- data.frame(nombre=nombre, edad=edad, nota=nota, grupo=grupo)

df_cols_num <- df_alumnos[, c("edad", "nota")]

#sapply(df_cols_num, min)
#sapply(df_cols_num, max)
#sapply(df_cols_num, mean)
#sapply(df_cols_num, sd)

sapply(df_cols_num, function(col_value){
  c(
    min = min(col_value),
    max = max(col_value),
    mean = mean(col_value),
    sd = sd(col_value)
  )
})

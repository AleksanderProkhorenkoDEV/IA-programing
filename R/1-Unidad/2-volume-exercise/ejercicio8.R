# ----------------------------------------------------------------
# Ejercicio 8: Eliminación de filas con NA
# Enunciado:
#   Cree un nuevo data frame df_sensores con las columnas:
#     sensor_id = c("S1", "S2", "S3", "S4", "S5")
#     temperatura = c(20.1, NA, 19.8, NA, 22.5)
#     activo = c(TRUE, TRUE, FALSE, TRUE, TRUE)
#   Elimine todas las filas que tengan NA en la columna temperatura.

sensor_id <- c("S1", "S2", "S3", "S4", "S5")
temperatura <- c(20.1, NA, 19.8, NA, 22.5)
activo <- c(TRUE, TRUE, FALSE, TRUE, TRUE)

df_sensores <- data.frame(sensor_id=sensor_id, temperatura=temperatura, activo=activo)
df_sensores <- subset(df_sensores, !is.na(temperatura))
df_sensores



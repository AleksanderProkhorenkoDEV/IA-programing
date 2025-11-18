# ----------------------------------------------------------------
# Ejercicio 9: Unión por posición y por nombre
# Enunciado:
#   Considere dos data frames pequeños:
#     df_ids <- data.frame(
#       id   = c(101, 102, 103),
#       user = c("u1", "u2", "u3"),
#       stringsAsFactors = FALSE
#     )
#     df_scores <- data.frame(
#       user = c("u2", "u1", "u4"),
#       score = c(15, 20, 5),
#       stringsAsFactors = FALSE
#     )
#   1) Haga un "merge" por la columna común 'user' para unir la puntuación.
#   2) Interprete por qué un usuario puede tener NA.

df_ids <- data.frame(
  id   = c(101, 102, 103),
  user = c("u1", "u2", "u3"),
  stringsAsFactors = FALSE
)
df_scores <- data.frame(
  user = c("u2", "u1", "u4"),
  score = c(15, 20, 5),
  stringsAsFactors = FALSE
)

merge(df_ids, df_scores, by= c("user"), all = TRUE)

# Puede tener NA, porque son usuarios que esten registrados en el sistema, 
# pero que no tengan puntuación, por no haber jugado partidas, o usuarios
# que no han terminado de darse de alta en una aplicación y les falta información
# adicional.

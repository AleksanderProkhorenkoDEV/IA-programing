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


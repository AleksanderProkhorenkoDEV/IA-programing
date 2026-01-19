
# ---------------------------------------------------------------------
# Ejercicio 11: Manejo de errores con tryCatch
# Enunciado:
#   Defina segura_sqrt(x) que devuelva sqrt(x) y, si x < 0, capture el error
#   y devuelva NA con una advertencia (warning()).

segura_sqrt <- function(x){
  tryCatch(
    expr = sqrt(x),
    error = function(e){
      return(NA)
    },
    warning = function(w){
      warning("x need be positive")
      
    }
  )
}

segura_sqrt(5)
segura_sqrt(-3)

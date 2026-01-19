# ---------------------------------------------------------------------
# Ejercicio 2: switch para mapear códigos
# Enunciado:
#   Cree una función categoria(nivel) que devuelva:
#     1 -> "Bajo", 2 -> "Medio", 3 -> "Alto"; cualquier otro -> "Desconocido"
#   Use switch().
#   https://r-coder.com/funcion-switch-r/

categoria <- function(n) {
  switch(n, 
  "1 " = "bajo", 
  "2"  =  "medio", 
  "3"  =  "alto", 
  "desconocido"
  )
}

categoria(4)

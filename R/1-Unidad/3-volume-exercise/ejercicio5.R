
# ---------------------------------------------------------------------
# Ejercicio 5: repeat con validación y salida por break
# Enunciado:
#   Simule tiradas de un dado justo (1..6) hasta obtener un 6.
#   Use repeat y salga con break.
#   https://r-coder.com/funcion-sample-r/

count = 0
repeat {
  count <- count + 1
  cat("Iteración: ", count, "\n")
  if (sample(1:6,1) == 6) {
    break  
  }
}
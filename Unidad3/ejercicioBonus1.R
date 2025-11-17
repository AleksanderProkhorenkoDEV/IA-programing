
# ---------------------------------------------------------------------
# Ejercicio 5: repeat con validación y salida por break BONUS: hacerlo sin bucle
# Enunciado:
#   Simule tiradas de un dado justo (1..6) hasta obtener un 6.
#   Use repeat y salga con break.
#   https://r-coder.com/funcion-sample-r/


count <- 0
x <- function(n){
  count <<- count + 1 
  if(n != 6) x(sample(1:6,1))
  cat("Iteraciones recursivas:", n, "\n")
}

x(sample(1:6,1))
cat("Ha tardado:", count)

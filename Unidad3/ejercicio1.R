# ---------------------------------------------------------------------
# Ejercicio 1: if / else básico
# Enunciado:
#   Dados dos números a y b, imprima cuál es mayor o si son iguales
#   utilizando if / else.
a <- 4
b <- 5

if(a>b){
  mensaje <- sprintf("a (%d) es mayor que b",a,b)
}else if(a<b){
  mensaje <- sprintf("b (%d) es mayor que (%d)", b,a)
}else{
  mensaje <- "a y b son iguales"
}

print(mensaje)
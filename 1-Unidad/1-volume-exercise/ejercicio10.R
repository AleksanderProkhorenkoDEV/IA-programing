# ----------------------------------------------------------------
# Ejercicio 10: Reordenación basada en otro vector
# Enunciado:
#   Dado nombres <- c("Ana", "Luis", "Eva", "Carlos") y
#        edades <- c(25, 30, 22, 28),
#   ordénelos de menor a mayor edad.

nombres <- c("Ana", "Luis", "Eva", "Carlos")
edades <- c(25, 30, 22, 28)

nombres[order(edades)]

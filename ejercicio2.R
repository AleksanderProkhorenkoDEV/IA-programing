# ----------------------------------------------------------------
# Ejercicio 2: Filtrado condicional múltiple
# Enunciado:
#   Cree un vector `temperaturas` con los valores:
#   c(15, 22, 18, 30, 25, 10, 28, 19, 16, 33)
#   Obtenga un nuevo vector con las temperaturas entre 18 y 28 grados,
#   ambos inclusive.

temperaturas <- c(15, 22, 18, 30, 25, 10, 28, 19, 16, 33)
filtro <- temperaturas >= 18 & temperaturas <= 28 # We can optimize the code doing the filter in the vector[]
resultado <- temperaturas[filtro]
print(seq(length(temperaturas))[filtro]) # The best way to obtain the index, you can use which

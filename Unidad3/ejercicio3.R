# ---------------------------------------------------------------------
# Ejercicio 3: for con next y break
# Enunciado:
#   Recorra 1:10 e imprima solo los números impares hasta encontrar el 7.
#   Use next para saltar pares y break al llegar a 7.

for (i in 1:10){
  if(i %% 2 == 0) next
  print(i)
  if(i == 7) break
}
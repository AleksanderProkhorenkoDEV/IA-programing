
# ---------------------------------------------------------------------
# Ejercicio 4: while con condición de parada
# Enunciado:
#   Genere números uniformes U(0,1) hasta que la suma supere 3.
#   Cuente cuántos números fueron necesarios.

suma = 0
count = 0
while(suma <= 3){
  suma <- suma + runif(1)
  count <- count + 1
}
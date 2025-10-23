# ----------------------------------------------------------------
# Ejercicio 5: Escalado de valores
# Enunciado:
#   Cree un vector v <- c(5, 10, 15, 20, 25) y escálelo de forma
#   que su suma total sea igual a 1.

v <- c(5, 10, 15, 20, 25)
v_escalado = v / sum(v)
sum(v_escalado)

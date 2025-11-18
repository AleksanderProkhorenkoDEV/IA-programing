# ================================================================
# Ejercicios de clase Volumen 3: Dataframes
# Autor: ChatGPT y Miguel A. Lopez (por ese orden)
# ----
# ================================================================

# ---------------------------------------------------------------------
# Ejercicio 1: if / else básico
# Enunciado:
#   Dados dos números a y b, imprima cuál es mayor o si son iguales
#   utilizando if / else.


# ---------------------------------------------------------------------
# Ejercicio 2: switch para mapear códigos
# Enunciado:
#   Cree una función categoria(nivel) que devuelva:
#     1 -> "Bajo", 2 -> "Medio", 3 -> "Alto"; cualquier otro -> "Desconocido"
#   Use switch().
#   https://r-coder.com/funcion-switch-r/




# ---------------------------------------------------------------------
# Ejercicio 3: for con next y break
# Enunciado:
#   Recorra 1:10 e imprima solo los números impares hasta encontrar el 7.
#   Use next para saltar pares y break al llegar a 7.




# ---------------------------------------------------------------------
# Ejercicio 4: while con condición de parada
# Enunciado:
#   Genere números uniformes U(0,1) hasta que la suma supere 3.
#   Cuente cuántos números fueron necesarios.




# ---------------------------------------------------------------------
# Ejercicio 5: repeat con validación y salida por break
# Enunciado:
#   Simule tiradas de un dado justo (1..6) hasta obtener un 6.
#   Use repeat y salga con break.
#   https://r-coder.com/funcion-sample-r/




# ---------------------------------------------------------------------
# Ejercicio 6: Función con argumentos por defecto y validación
# Enunciado:
#   Defina una función escalar(x, factor = 1) que multiplique un vector numérico
#   por 'factor'. Valide que x sea numérico y que factor sea escalar finito;
#   en caso contrario lance error con stop().




# ---------------------------------------------------------------------
# Ejercicio 7: Función que devuelve múltiples valores (lista)
# Enunciado:
#   Defina una función resumen_num(x) que devuelva una lista con
#   minimo, maximo, media y sd de un vector numérico, ignorando NA.




# ---------------------------------------------------------------------
# Ejercicio 8: Función de orden superior (recibe otra función)
# Enunciado:
#   Defina aplicar2(x, f) que aplique una función 'f' elemento a elemento
#   sobre 'x'. Valide que 'f' sea una función. Devuelva el mismo tipo que sapply.





# ---------------------------------------------------------------------
# Ejercicio 9: Clausuras (closures)
# Enunciado:
#   Implemente fabrica_suma(k) que devuelva una función g(x) = x + k,
#   capturando el valor de k en el entorno.




# ---------------------------------------------------------------------
# Ejercicio 10: Recursión (factorial) con control de errores
# Enunciado:
#   Escriba factorial_r(n) recursivo que:
#     - Lance error si n no es entero no negativo.
#     - Use caso base para n==0 o n==1.




# ---------------------------------------------------------------------
# Ejercicio 11: Manejo de errores con tryCatch
# Enunciado:
#   Defina segura_sqrt(x) que devuelva sqrt(x) y, si x < 0, capture el error
#   y devuelva NA con una advertencia (warning()).




# ================================================================
# Ejercicios de clase Volumen 1: Vectores en R 
# Autor: ChatGPT y Miguel A. López (por ese orden)
# 23/10/2025
# ================================================================

# ----------------------------------------------------------------
# Ejercicio 1: Selección condicional vectorizada
# Enunciado:
#   Dado a <- c(3, -1, 0, 5, -2), cree un nuevo vector con el valor 1
#   donde a sea positivo y 0 en caso contrario.


# ----------------------------------------------------------------
# Ejercicio 2: Filtrado condicional múltiple
# Enunciado:
#   Cree un vector `temperaturas` con los valores:
#   c(15, 22, 18, 30, 25, 10, 28, 19, 16, 33)
#   Obtenga un nuevo vector con las temperaturas entre 18 y 28 grados,
#   ambos inclusive.




# ----------------------------------------------------------------
# Ejercicio 3: Reemplazo condicional
# Enunciado:
#   A partir del mismo vector `temperaturas`, reemplace todos los valores
#   menores que 18 por NA y muestre el resultado.




# ----------------------------------------------------------------
# Ejercicio 4: Estadísticos personalizados (sin mean() ni sd())
# Enunciado:
#   Calcule, sin usar mean() ni sd(), la media y la desviación estándar
#   de `temperaturas`, empleando operaciones vectoriales básicas y
#   funciones como sum() y length().




# ----------------------------------------------------------------
# Ejercicio 5: Escalado de valores
# Enunciado:
#   Cree un vector v <- c(5, 10, 15, 20, 25) y escálelo de forma
#   que su suma total sea igual a 1.




# ----------------------------------------------------------------
# Ejercicio 6: Transformación lineal (tipificación)
# Enunciado:
#   Transforme el vector x <- 1:6 para que tenga media 0 y desviación
#   estándar 1 (tipificación).




# ----------------------------------------------------------------
# Ejercicio 7: Operaciones vectoriales combinadas (margen %)
# Enunciado:
#   Cree dos vectores:
#     ventas <- c(120, 150, 100, 180, 200)
#     costes <- c(80, 90, 70, 110, 130)
#   Calcule el beneficio porcentual de cada elemento y guárdelo en
#   un nuevo vector `margen`.




# ----------------------------------------------------------------
# Ejercicio 8: Indexado con vectores lógicos (mayores que la media)
# Enunciado:
#   Cree un vector
#     edades <- c(22, 34, 29, 41, 18, 55, 23, 37)
#   Obtenga las edades que sean mayores que la media del vector.




# ----------------------------------------------------------------
# Ejercicio 9: Secuencias y repetición + ordenación descendente
# Enunciado:
#   Genere un vector que repita la secuencia c("A", "B", "C") 4 veces
#   y luego ordene el resultado de forma descendente alfabéticamente.





# ----------------------------------------------------------------
# Ejercicio 10: Reordenación basada en otro vector
# Enunciado:
#   Dado nombres <- c("Ana", "Luis", "Eva", "Carlos") y
#        edades <- c(25, 30, 22, 28),
#   ordénelos de menor a mayor edad.





# ----------------------------------------------------------------
# Ejercicio 11: Conteo rápido
# ** Es necesario explicar la funcion table. 
# ** Se podría no utilizar? Estructuras de control de flujo.
# Enunciado:
#   Con valores <- c(1, 2, 2, 3, 1, 1, 2, 3, 3, 3), cuente cuántas
#   veces aparece cada número.



# ----------------------------------------------------------------
# Ejercicio 12: Funciones aplicadas a subconjuntos
# ** Es necesario explicar los if en linea
# Enunciado:
#   Dado un vector
#     notas <- c(7, 4, 9, 5, 6, 10, 8, 3, 5, 9)
#   calcule la media de las notas aprobadas (>= 5) y la media de las
#   suspensas (< 5) usando únicamente indexado y funciones básicas.




# ----------------------------------------------------------------
# Ejercicio 13: Sustitución sin ifelse
# Enunciado:
#   Dado x <- c(4, 9, NA, 16, NA), sustituya los valores NA por la
#   media de los elementos no nulos.
# Solución:




# ----------------------------------------------------------------
# Ejercicio 14: Creación dinámica, concatenación, orden y únicos
# Enunciado:
#   Cree tres vectores:
#     v1 <- 1:4
#     v2 <- seq(10, 40, by = 10)
#     v3 <- rep(5, 3)
#   Concatene los tres en un único vector `v_total`, ordénelo de forma
#   descendente y elimine los duplicados.




# ----------------------------------------------------------------
# Ejercicio 15: Funciones vectorizadas con sapply / vapply
# ** Es necesario explicar las funciones vectorizadas
# Enunciado:
#   Cree un vector
#     x <- c(-2, 4, -6, 8, -10)
#   Aplique una función anónima que devuelva el valor absoluto multiplicado
#   por 2 para cada elemento, usando sapply() o vapply().




# ----------------------------------------------------------------
# Ejercicio 16: Función normalizar() (0–1) y prueba con runif
# ** Es necesario explicar funciones, estructura if y generación de aleatorios
# Enunciado:
#   Defina una función `normalizar()` que reciba un vector numérico y devuelva
#   su versión normalizada entre 0 y 1:
#     x' = (x - min(x)) / (max(x) - min(x))
#   Pruebe su funcionamiento con un vector aleatorio generado con
#   runif(10, min=50, max=100).




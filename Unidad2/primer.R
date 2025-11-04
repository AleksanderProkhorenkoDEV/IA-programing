#Encuentra los numeros pares divisibles por tres, menores que mil
v1 <- array(seq(0,1000, by = 2))
v1[v1 %% 3 == 0]

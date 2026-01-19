# PIA - PRimer Examen de R
# Aleksander Trujillo Prokhorenko
# 11/12/25

ruta = "/home/alumnot/Escritorio/PIA/ejercicios/2-Unidad/recuperacion/"


# Actividad 1
#Carga los datos relativos al “Indice de Precios al Consumo” en un dataframe, no cargues la
#cabecera ni el pié. Al ejecutar la función, el dataframe quedará de la forma:

library(readODS)
setwd(ruta)

cargaDatos <- function(ruta){
  #Para evitar cargar la cabecera, escogemos las columnas que queremos del ods con
  # el parametro range.
  return (read_ods(ruta, range = "A7:D288"))
}

datos <- cargaDatos("IPCOct24.ods")

#Cambiamos el nombre de la primera columna por comodidad
colnames(datos)[1:4] <- c("autonomia", "indice", "variacionMensual", "variacionAnual")

# Actividad 2
#Diseña una función autocontenida (sin hacer uso de otras funciones) que, a partir del
#dataframe anterior, genere un dataframe con el nombre de las autonomías y el IPC del grupo
#de consumo indicado por parámetro. Observa que la autonomía no está acompañada del
#código, puedes extraer el nombre utilizando gsub. (2,5 puntos)

ipcGrupo <- function(dataFrame, parametro){
  #Sacamos el IPC filtrando por que la autonomia tiene que ser igual al parametro
  # para evitar sacar el valor nulo de inicio de tabla comprobamos que no hayan
  # valores nulos en autonomia, y le indicamos que queremos la columna indice
  ipc <- dataFrame[dataFrame$autonomia == parametro & 
                     !is.na(dataFrame$autonomia), c("indice")]
  #Obtenemos todas las comunidades haciendo un filtro por los indices que sean NA
  comunidad <- dataFrame[is.na(dataFrame$indice), c("autonomia")]
  #Añadimos un gsub, para eliminar los números que van delante de las comunidades
  comunidad <- gsub("\\d", "", comunidad$autonomia)
  #creamos el nuevo dataframe y hacemos return de este
  return (data.frame(autonomia = comunidad, ipc = ipc))
}

grupo03 <- ipcGrupo(datos, "03 Vestido y calzado")


# Actividad 3
#Diseña una función que devuelva un ranking de las autonomías según la variación 
#mensual de un determinado grupo de consumo, por ejemplo “04 Vivienda, agua, 
#electricidad, gas y otros combustibles”, es decir, sería un ranking por autonomias
#con mayor proyección de subida. (2,5)

rankingAutonomia <- function(dataFrame, parametro){
  #Filtramos igual que en el ejercicio anterior, pero cambiando la columna que 
  # queremos obtener
  valoracionMensual <- dataFrame[dataFrame$autonomia == parametro & 
                               !is.na(dataFrame$autonomia), c("variacionMensual")]
  #Aplicamos el mismo filtro
  comunidad <- dataFrame[is.na(dataFrame$indice), c("autonomia")]
  #Añadimos un gsub, para eliminar los números que van delante de las comunidades
  comunidad <- gsub("\\d", "", comunidad$autonomia)
  ranking <- data.frame(autonomia = comunidad, variacionMensual = valoracionMensual)
  #Al dataframe "ranking" sin ordenar lo ordenamos con la función order, que nos
  # devuelve los indices ordenados de la columna, y sobrescribimos el dataframe
  ranking <- ranking[order(ranking$variacionMensual, decreasing = TRUE),]
}

ranking <- rankingAutonomia(datos, "04 Vivienda, agua, electricidad, gas y otros combustibles")


# Actividad 4
#Diseña una función que construya un dataframe con el grupo con 
#mayor “Variación en lo que va de Año” para cada autonomía, 
#generará una salida de la forma: (3 puntos)




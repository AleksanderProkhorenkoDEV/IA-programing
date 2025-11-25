# Actividad 1: Ingesta de datos
library(readODS)

setwd("/home/alumnot/Escritorio/PIA/ejercicios/2-Unidad/examen/")

#Leemos los datos
datosAgua <- read_ods("agua.ods", range ="A7:S121")
datosCenso <- read.csv2("censo.csv")

#Cambio de nombre en las columnas, para evitar mayusculas y puntos.
colnames(datosCenso)[c(1:6)] <- c("total_nacional", "comunidad", "provincia", "sexo", "periodo", "total")
colnames(datosAgua)[c(1)] <- c("autonomia")

clean_column <- function(col, val){
  col[which(col == "")] <- val
  return(col)
}

#quitamos con gsub el "." y lo cambiamos por nada (string vacio), le aplicamos un as.numeric para su transformación a númerico.
datosCenso$total <- as.numeric(gsub("\\.", "", datosCenso$total))
#Marcamos los datos vacios como NA
datosCenso$comunidad <- clean_column(datosCenso$comunidad, NA)
datosCenso$provincia <- clean_column(datosCenso$provincia, NA)

#Actividad 2: Filtrado de datos

# apartado A
datosAguaFiltrados <- datosAgua[datosAgua$autonomia == "2. Volumen de agua no registrada", c("autonomia","2020")]
colnames(datosAguaFiltrados)[c(1,2)] <- c("autonomia", "perdidas")

# apartado B

# Obtenemos un dataframe cercano pero no valido, filtrando por los datos que queremos.
censo <- datosCenso[datosCenso$sexo == "Total" & datosCenso$periodo == "2020",]
#sacamos el censo de las comunidades quitando los registros que son la suma total
censo <- censo[!is.na(censo$comunidad) & !is.na(censo$provincia), c("comunidad", "total")]

#creamos un dataframe vacio al que posteriormente le asignamos filas
datosCensoFiltrado <- data.frame(
  autonomia = character(),
  poblacion = numeric()
)

#recorremos el dataframe asignado una variable comunidad, en caso de que esa comunidad este en el dataframe final, saltamos de iteración
# en caso contrario de que no este, hacemos la suma el total de esa comunidad.
for (i in seq(1, nrow(censo))){
  comunidad <- censo$comunidad[i]
  if(length(grep(comunidad, datosCensoFiltrado)) == 1) next
  sumatoria <- sum(censo$total[which(comunidad == censo$comunidad)])
  newRow <- data.frame(autonomia = comunidad, poblacion = sumatoria)
  datosCensoFiltrado <- rbind(datosCensoFiltrado, newRow)
}
newRow <- data.frame(autonomia = "Total nacional", poblacion = sum(datosCensoFiltrado$poblacion))
datosCensoFiltrado <- rbind(datosCensoFiltrado, newRow)






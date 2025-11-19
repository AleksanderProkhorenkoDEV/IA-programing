# Apartado 3: Cargue los datos en un Dataframe 

setwd("D:\\Desarrollo\\IA-programing\\2-Unidad\\02-tarea")

data <- read.csv2("69959.csv")
head(data)

# Apartado 4: Prepare los datos

#Eliminación de la primera columna.
data <- data[, -c(1)]
colnames(data)[c(1:6)] <- c("comunidad", "provincias", "ocupacion", "sexo", "periodo", "profesionales")
head(data)

# Creación de una función al que le pasas una columna y un valor y te automátiza el proceso.
clean_column <- function(col, val){
  col[which(col == "")] <- val
}

data$comunidad <- clean_column(data$comunidad, "nacional")
data$provincias <- clean_column(data$provincias, NA)
# Primero con gsub obtenemos las cadenas sin ".", despues las casteamos.
data$profesionales <- as.numeric(gsub("\\.", "", data$profesionales))
head(data)

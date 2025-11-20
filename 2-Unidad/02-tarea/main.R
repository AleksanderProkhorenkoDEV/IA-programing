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
  return(col)
}

data$comunidad <- clean_column(data$comunidad, "nacional")
data$provincias <- clean_column(data$provincias, NA)
# Primero con gsub obtenemos las cadenas sin ".", despues las casteamos.
data$profesionales <- as.numeric(gsub("\\.", "", data$profesionales))
head(data)

#Apartado 5: Implemente una función para extraer datos

extraer_provincia <- function(dataFrame, param){
      #Comprobaciones y validaciones
      if(!is.data.frame(dataFrame)) stop("El parametro dataFrame, debe ser un data frame.")
      if(length(grep(param, dataFrame)) == 0) stop(paste("No se encuentra la provincia: ", param, " en el dataframe"))
              # Busqueda de coincidencias dentro de la columa pronvincias y extraemos los datos que queremos.
      res <- dataFrame[grepl(param, dataFrame$provincias), c("ocupacion", "periodo", "profesionales")]
      return(res)
}

granada <- extraer_provincia(data, "Granada")

#Apartado 6: Filtrado de datos

filtrado <- subset(data, (data$ocupacion == "91 Empleados domésticos" 
                          & data$comunidad != "nacional" 
                          & !is.na(data$provincias)
                          & data$periodo == "2022")
                          & data$sexo != "Total"
                   )

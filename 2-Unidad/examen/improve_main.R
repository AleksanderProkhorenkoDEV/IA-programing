library(readODS)

#Activity 1

setwd("D:\\Desarrollo\\IA-programing\\2-Unidad\\examen")

datosAgua <- read_ods(path = "agua.ods", range = "A7:S121")
datosCenso <- read.csv2("censo.csv")

#Refactor the columns names
colnames(datosCenso)[1:6] <- c("totalNacional", "comunidadesAutonomas", "provincias", "sexo", "periodo", "total")
colnames(datosAgua)[1] <- c("autonomia")

clean_column <- function(col, val){
  col[which(col == "")] <- val
  return(col)
}

#Convert the string to integer
datosCenso$total <- as.integer(gsub("\\.","", datosCenso$total))

#Clean the columns, change the blank values for NA
datosCenso$comunidadesAutonomas <- clean_column(datosCenso$comunidadesAutonomas, NA)
datosCenso$provincias <- clean_column(datosCenso$provincias, NA)

# Activity 2:

# A)

#Get two dataframe with the data
dataLabel <- datosAgua[datosAgua$autonomia == "2. Volumen de agua no registrada", c("2020")]
dataAutonomia <- datosAgua[is.na(datosAgua$`2020`), c("autonomia")]

#Merge in one dataframe
datosAguaFiltrados <- data.frame(autonomia = dataAutonomia, perdidas = dataLabel)
colnames(datosAguaFiltrados)[2] <- c("perdidas")

#B)

#Filter in datosCenso and obtain all the data.
datosCensoFiltrados <- datosCenso[datosCenso$sexo == "Total" & is.na(datosCenso$provincias) 
                                  & !is.na(datosCenso$comunidadesAutonomas)
                                  & datosCenso$periodo == "2020", 
                                  c("comunidadesAutonomas", "total")]
rownames(datosCensoFiltrados) <- 1:nrow(datosCensoFiltrados)
# Activity 3

# A)
hombres <- datosCenso[datosCenso$comunidadesAutonomas == "19 Melilla" & 
             datosCenso$periodo == "2020" &
             datosCenso$sexo == "Hombres" &
             !is.na(datosCenso$provincias),
           c("total")]
mujeres <- datosCenso[datosCenso$comunidadesAutonomas == "19 Melilla" & 
                        datosCenso$periodo == "2020" &
                        datosCenso$sexo == "Mujeres" &
                        !is.na(datosCenso$provincias),
                      c("total")]

datosCensoFiltrados$total[datosCensoFiltrados$comunidadesAutonomas == "19 Melilla"] <- hombres + mujeres

totalCeuta <- datosCensoFiltrados$total[datosCensoFiltrados$comunidadesAutonomas == "18 Ceuta"]
totalMelilla <- datosCensoFiltrados$total[datosCensoFiltrados$comunidadesAutonomas == "19 Melilla"]
datosCensoFiltrados <- datosCensoFiltrados[-c(18,19),]
datosCensoFiltrados <- rbind(datosCensoFiltrados,
                             c(comunidadesAutonomas = "Ceuta y Melilla", total = totalCeuta + totalMelilla))

datosCensoFiltrados <- rbind(datosCensoFiltrados, 
                             c(comunidadesAutonomas = "Total Nacional", 
                                total= sum(as.integer(datosCensoFiltrados$total))
                              )
                            )

conjuntoDatos <- merge(x = datosCensoFiltrados, y = datosAguaFiltrados, all= TRUE, 
                       by.x = "comunidadesAutonomas",
                       by.y = "autonomia")


conjuntoDatos$perdidaProporcion <- (as.integer(conjuntoDatos$perdidas) / as.integer(conjuntoDatos$total)) * 100
conjuntoDatos$eficiencia <- (as.integer(conjuntoDatos$total) / as.integer(conjuntoDatos$perdidas)) * 100



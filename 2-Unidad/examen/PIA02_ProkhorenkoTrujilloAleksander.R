
# Actividad 1: Ingesta de datos.


library(readODS)

setwd("/home/alumnot/Escritorio/PIA/ejercicios/2-Unidad/examen/")

#Leemos los datos.
datosAgua <- read_ods("agua.ods", range ="A7:S121")
datosCenso <- read.csv2("censo.csv")

#Formateamos el nombre de las columnas, para quitar puntos, acentos y mayusculas
colnames(datosCenso)[1:6] <- c("total_nacional", "comunidad", "provincia", "sexo", "periodo", "total")
#Convertimos a númerico el campo total, y quitamos el punto.
datosCenso$total <- as.numeric(gsub("\\.", "", datosCenso$total))
#Los campos que esten vacios los marcamos como NA.
clean_column <- function(col, val){
  col[which(col == "")] <- val
  return(col)
}
datosCenso$comunidad <- clean_column(datosCenso$comunidad, NA)
datosCenso$provincia <- clean_column(datosCenso$provincia, NA)

# Actividad 2: Filtrado de datos.

# a) Filtrar datosAgua

datosSinEtiquetar <- datosAgua[datosAgua$...1 == "2. Volumen de agua no registrada", c("2020")]
datosEtiqueta <- datosAgua[is.na(datosAgua$`2020`),c("...1")]
datosAguaFiltrados <- data.frame(autonomia = datosEtiqueta, perdidas = datosSinEtiquetar)
colnames(datosAguaFiltrados)[c(1:2)] <- c("autonomia", "perdidas")


# b) Filtrar datosCenso

# Se hace un filtrado en datos censo, para sacar los datos de las comunidades autonomas
# por ende no queremos total nacional !is.na(comunidad),
# como queremos el dato total, cogemos el sexo = total
# del periodo 2020
comunidad <- datosCenso[!is.na(datosCenso$comunidad) & datosCenso$sexo == "Total" & datosCenso$periodo == "2020" & is.na(datosCenso$provincia), c("comunidad")]
total <- datosCenso[!is.na(datosCenso$comunidad) & datosCenso$sexo == "Total" & datosCenso$periodo == "2020" & is.na(datosCenso$provincia), c("total")]
datosCensoFiltrados <- data.frame(
  comunidad = comunidad,
  total = total
)


# Actividad 3: Reparar los datos

# a)

datosCensoFiltrados$total[datosCensoFiltrados$comunidad == "19 Melilla"] <- datosCenso[
                                                                            datosCenso$comunidad == "19 Melilla" & 
                                                                            datosCenso$periodo == "2020" &
                                                                            datosCenso$sexo == "Total" &
                                                                            !is.na(datosCenso$provincia), c("total")]
# b)
# Sacamos la suma de ceuta y melilla
ceutaYmelilla <- sum(datosCensoFiltrados[datosCensoFiltrados$comunidad == "19 Melilla", c("total")], datosCensoFiltrados[datosCensoFiltrados$comunidad == "18 Ceuta", c("total")])
# Borramos los registros antiguos
datosCensoFiltrados <- datosCensoFiltrados[-c(18,19), ]
# Agregamos la nueva fila combinada
datosCensoFiltrados <- rbind(datosCensoFiltrados, c("Ceuta y Melilla", ceutaYmelilla))
# c)
# Hacemos la suma de total nacional y la añadimos
datosCensoFiltrados <- rbind(datosCensoFiltrados, c("Total Nacional", sum(as.numeric(datosCensoFiltrados$total))))

# Actividad 4: Construye el conjunto de datos

# a)
conjuntoDatos <- merge(x = datosCensoFiltrados, y = datosAguaFiltrados, all = TRUE, by.x = "comunidad", by.y = "autonomia")

# b)

# Eficiencia de comunidad

eficiencia <- ( sum(as.numeric(conjuntoDatos$perdidas)) / sum(as.numeric(conjuntoDatos$total)) ) * 100

# De cada 100L de agua que se proporcionan a nivel nacional se desperdician 2.25L, ya sea por fugas o mal uso
# Cargar y preparación de datos para un modeo que predecirá el número de goles
# de un jugador en un partido.

# Nos proporcionan una hoja de calculo con datos de equipos, jugadores y partidos
# Nos piden un único dataframe con los datos de interés para un modelo de 
# estas características.

library(readODS)

setwd("/home/alumnot/Escritorio/PIA/ejercicios/Fotball-Prediction/")

equipos <- read_ods("datos_futbol_R_ejercicio.ods", sheet = "equipos")
jugadores <- read_ods("datos_futbol_R_ejercicio.ods", sheet = "jugadores")
partidos <- read_ods("datos_futbol_R_ejercicio.ods", sheet = "partidos")

head(equipos)
head(jugadores)
head(partidos)

#DataFrame que contenga: jugadores, partidos jugados, goles, tiros a puerta, posición, partidos ganados, minutos jugados
datos <- data.frame(nombre = jugadores$nombre, jugador_id = jugadores$jugador_id ,minutos = jugadores$minutos_jugados_temporada, equipo = jugadores$equipo_id)

#Partidos totales
get_total_match <- function(teamId){
  match_local <- sum(partidos$equipo_local_id == teamId)
  match_visit <- sum(partidos$equipo_visitante_id == teamId)
  match_local + match_visit

}
get_total_match("1")

# Partidos ganados
get_partidos_ganados_from_equipo <- function(equipo_id) {
  partidos_ganados <- partidos[
    (partidos$equipo_local_id == equipo_id & partidos$goles_local > partidos$goles_visitante) |
      (partidos$equipo_visitante_id == equipo_id & partidos$goles_visitante > partidos$goles_local),
  ]
  
  return(nrow(partidos_ganados))
}
get_partidos_ganados_from_equipo("1")

# Partidos perdidos
perdidos <- function(teamId){
  (sum(partidos$equipo_local_id == "1") + sum(partidos$equipo_visitante_id == "1"))  - get_partidos_ganados_from_equipo(teamId)
}


datos$total_partidos <- sapply(jugadores$equipo_id, get_total_match)
datos$partidos_ganados <- sapply(jugadores$equipo_id, get_partidos_ganados_from_equipo)
datos$partidos_perdidos <- sapply(jugadores$equipo_id, perdidos)

head(datos)

datos$iMALM <- (datos$partidos_ganados - datos$partidos_perdidos) * (datos$minutos / datos$total_partidos)

normalice <- function(vec){
  vmin <- min(vec)
  vmax <- max(vec)
  rango <- vmax - vmin
  if(rango == 0){
    return(rep(0, length(vec)))
  }
  (vec -vmin) / rango
}
datos$iMALM <- normalice(datos$iMALM)

mejores30 <- datos[c(order(datos$iMALM, decreasing = TRUE)),][1:30,]

table(mejores30$equipo)



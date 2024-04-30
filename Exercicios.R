#Média coluna Ozone do FramaData airquality
#Necessario eliminar valores NA
med_arit <- mean(airquality$Ozone , na.rm = TRUE)

#Criar vetor com infos de Ozone, eliminando valores NA
#Sub valor da media aritmetica
vet_Ozone <- airquality$Ozone[!is.na(airquality$Ozone)]-med_arit

#Quadrado do valor obtido em vet_Ozone
quadrado_dif <- vet_Ozone^2

#Calculo da variancia e desvio padrão
variancia <- mean(quadrado_dif)
desvio_padrao <- sqrt(variancia)

sd(airquality$Ozone, na.rm = TRUE)

#Avaliando a coluna Solar.R
#Numero de NAs na coluna Solar.R
sum(is.na(airquality$Solar.R))

#Filtrando o DataFrame com base em uma unica coluna
airquality[!is.na(airquality$Solar.R) , ]

#Filtrando o DataFrama com base em varias colunas
airquality[!is.na(airquality$Solar.R) & airquality$Month == 5 , ]

#Testando looping e Funções
med_por_coluna <- function(dt){
  
  for (coluna in 1: (dim(dt)[2])){
  texto <- paste(names(dt)[coluna],'=' , mean(dt[,coluna], na.rm = TRUE))
  print(texto)  
  }
}

x = med_por_coluna(airquality)

#Função para media acumulada









































    
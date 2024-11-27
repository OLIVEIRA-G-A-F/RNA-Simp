#Definir diretório
setwd('D:/SeuDiretorio/Exemplo/') #diretorio onde o arquivo do modelo e os dados estão armazenados

#Carregar pacotes
library(tidymodels)
library(tidyverse)

#Utilizando o modelo
modelo = readRDS("soil_moisture_model.rda") #carrega o modelo
dados = read.csv("exemplo_dados.csv") #carrega os dados
dados= dados %>% janitor::clean_names() #padroniza o cabeçalho
preditos = predict(modelo, new_data= dados) #aplicação do modelo para estimativa da umidade do solo

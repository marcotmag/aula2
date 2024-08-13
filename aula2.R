##########################
## Tabela de Distância  ##
##########################
# install.packages("ggplot2")
# Pacotes
library(ggplot2)

ggplot(data = distancia, aes(x = idade, y = distancia)) +
  geom_point(size = 4) +
  theme_classic() +
  xlab("Idade") +
  ylab("Distância (m)") +
  geom_smooth(method = "lm", se = FALSE)

# Coeficiente de correlação linear
cor(distancia$idade, distancia$distancia)
# Resposta: -0.8012447

#Ajuste do modelo de regressão
modelo_1 <- lm(formula = distancia ~ idade, data = distancia)

# Mostra resultados do modelo      
summary(modelo_1)

  # intervalo de confiança para os parâmetros
  
  confint(modelo_1)

# Predição para um novo valor

novo_dado <- data.frame(idade = 24) # Para 24 anos a pessoa vê 168.1726 metros de acordo com o modelo
predict(modelo_1, novo_dado)

# Análise de resíduos

plot(modelo_1)

# se a linha tiver pareecendo uma reta constante, entãoomodelo é confiável
# ele tem homocedasticidade

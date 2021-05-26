###Carregando 

####Analisando os dados#####
par(mar=c(3,3,2,2))
plot(Mean_temp~Lat, data = clima) ##Avaliando efeito da latitude na temperatura
summary (lm(Mean_temp~Lat, data = clima)) ## Avaliando summary da relacao



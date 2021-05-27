###Carregando pacotes###

require(corrplot)
library(here)
library(pivot)
###Gerando e exportando o gráfico####

#Criando o caminho o arquivo -> CONFERIR O PAR
png(here("output", "figures", "correl.png"), width = 12, height =6, units = 'in', res = 600)

#Rodando a correlação e exportando
corrplot(cor(clima[,c(3:8,11)],use="complete.obs"),type="upper", method="ellipse",
         tl.pos="tp",diag=F,addCoef.col = "darkgrey",cex.axis=1.5)
dev.off()

###Gerando e exportando a matriz com alguns dados##
matriz_correl <-(cor(clima[,c(3:8,11)]))

write.table (matriz_correl, file = (here("output", "tables","correl.csv")),
             sep = ",", quote = TRUE)


###Gerando e exportando um SM##
bioma <- (unique(clima[,c(10,11)]))
unique (bioma)
write.table (bioma, file = (here("output","supp","biome_ID.csv")),
             sep = ",", quote = TRUE)




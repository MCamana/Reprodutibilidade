####Carregando o pacote para o gráfico####

require(corrplot)

###Gerando e exportando o gráfico####

#Criando o caminho o arquivo -> CONFERIR O PAR
png(here("output", "figures", "correl.png"), width = 12, height =6, units = 'in', res = 600)

#Rodando a correlação e exportando
corrplot(cor(clima[,c(3:8,11)],use="complete.obs"),type="upper", method="ellipse",
         tl.pos="tp",diag=F,addCoef.col = "darkgrey",cex.axis=1.5)
dev.off()

###Gerando e exportando a matriz com alguns dados##
# Aqui vou exportar algumas colunas da matriz "clima"

###Gerando e exportando um SM##
# Aqui vou exportar os dados de bioma e o ID

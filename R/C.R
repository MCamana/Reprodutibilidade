####Libraries####
library(here)


####Subindo os dados e conferindo####

clima <- read.table (here("data","processed","clima_data.txt"), header=T)
str(clima)


####Analisando os dados#####
plot(Mean_temp~Lat, data = clima)
summary (lm(Mean_temp~Lat, data = clima))

require(corrplot)
x11()
par(mar=c(1,2,2,2))
corrplot(cor(clima[,c(3:8,11)],use="complete.obs"),type="upper", method="ellipse",
         tl.pos="tp",diag=F,addCoef.col = "darkgrey",cex.axis=1.5)

par(mar=c(2,2,2,2))
plot(clima$Seasonal_p~clima$Driest_mon)
plot(clima$Anual_prec~clima$Biome_ID)



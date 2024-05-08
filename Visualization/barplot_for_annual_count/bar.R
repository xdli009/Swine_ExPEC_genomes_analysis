library(ggplot2)

data <- read.table("year.txt", header = F, check.names = F)

p <- ggplot(data, aes(x=V1, y=V2, fill=V1)) + geom_bar(stat="identity",color = "black") +
  scale_fill_manual(values=c("#f7f7f7","#d9d9d9","#bdbdbd","#969696","#737373","#525252","#252525")) + labs(x = "", y = "Count") +
  theme(axis.title=element_text(size=15),axis.text.x = element_text(angle=45, hjust = 1, vjust = 1 ,size = 12),
        axis.text.y = element_text(size = 12),axis.ticks.length=unit(0.15,'cm') ,
      panel.background = element_blank(),axis.line = element_line(color = "black"))
p

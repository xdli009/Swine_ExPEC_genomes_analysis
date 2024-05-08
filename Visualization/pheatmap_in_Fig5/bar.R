library(ggplot2)

data <- read.table("all_coverage_0.9_0.8_retain_high_change_group.txt", header = T, check.names = F)

data$group <- factor(data$group,levels = c("A","B1","F","G"))
mycol <- c("#e4201e","#2c80c1","#3ea75d","#e5842b")

p <- ggplot(data, aes(x=plasmid, y=value, fill=group)) + geom_bar(stat = "identity",position ="stack") +
  scale_fill_manual(values=mycol) + labs(x = "plasmid" , y = "number") +
  theme(axis.title=element_text(size=15),axis.text.x = element_text(angle=45, hjust = 1, vjust = 1 ,size = 12),
        axis.text.y = element_text(size = 12),axis.ticks.length=unit(0.15,'cm') ,
        panel.background = element_blank(),axis.line = element_line(color = "black"))
p
ggsave("bar.pdf",p,width = 8,height = 8)

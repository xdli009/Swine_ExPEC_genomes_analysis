library(ggplot2)
setwd("E:/7_ecoil/ARG/AR_bar")
library(reshape2)
frame=read.csv("AR_bar.csv",header=T)
frame$drug <- factor(frame$drug,levels = c("Trimethoprim","Tetracycline","Sulfonamide","Levofloxacin","Moxifloxacin","Ciprofloxacin","Chloramphenicol","Imipenem","Meropenem","Tazobactam piperacillin","Amoxicillin clavulanic acid","Ceftazidime","Aztreonam","Sulbactam ampicillin","Cefepime","Cefotaxime","Cefazolin","Piperacillin","Ampicillin","Amikacin","Gentamicin"))

ggplot(frame,aes(x=drug,y=prevalence,fill=class))+ 
  geom_bar(stat="identity") +  
  scale_fill_manual(values=c("#a4cfe6", "#cff5f5", "#00aa8c", "#ef5350", "#cab2d5", "#6a3d9b", "#fef59a")) +
  coord_flip() + labs(x="Antimicrobial resistance genes",y="Prevalence(%)") + 
  theme(axis.title=element_text(size=10),axis.ticks.length=unit(0.15,'cm'),panel.grid.major.x = element_line(size=0.1,color = "gray"),
        panel.background = element_blank(),axis.line = element_line(color = "black"))
ggsave("AR_bar.pdf", width = 6,height = 8,scale = 1,limitsize = FALSE)

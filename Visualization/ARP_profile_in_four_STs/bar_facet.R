library(ggplot2)
library(reshape2)
frame=read.csv("AR_profile_all_bar.csv",header=T)
sample=c("drug","class","short")
mydata<-melt(frame,id.vars=sample,variable.name="ST",value.name="prevalence")
mydata$drug <- factor(mydata$drug,levels = c("Tetracycline","Sulfonamide trimethoprim","Levofloxacin","Moxifloxacin","Ciprofloxacin","Chloramphenicol","Imipenem","Meropenem","Tazobactam piperacillin","Amoxicillin clavulanic acid","Ceftazidime","Aztreonam","Sulbactam ampicillin","Cefepime","Cefotaxime","Cefazolin","Piperacillin","Ampicillin","Amikacin","Gentamicin"))

ggplot(mydata,aes(x=drug,y=prevalence,fill=class))+ 
  geom_bar(stat="identity") +  
  scale_fill_manual(values=c("#a4cfe6", "#cff5f5", "#00aa8c", "#ef5350", "#cab2d5", "#6a3d9b")) +
  coord_flip() + facet_wrap(~ST,nrow=1) + labs(x="Antimicrobial resistance phenotypes",y="Prevalence(%)") + 
  theme(axis.title=element_text(size=10),axis.ticks.length=unit(0.15,'cm'),panel.grid.major.x = element_line(size=0.1,color = "gray"),
        panel.background = element_blank(),axis.line = element_line(color = "black"),panel.spacing.x=unit(0.5, "lines"))
ggsave("ARP_lineage_drug.pdf", width = 26,height = 8,scale = 1,limitsize = FALSE)

library("pheatmap")
rm(list=ls())
mash <- read.csv("distances.csv", header=TRUE,row.names = 1)
mash <- as.matrix(mash)
pheatmap(mash,border=FALSE,show_rownames=F,cluster_row = F, cluster_col = F, 
         color = colorRampPalette(c("#FFFFD9", "#42B6C4", "#081D58"))(50))

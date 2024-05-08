library(gggenes)
library(ggplot2)
genes <- read.table("all_IS_arg_change_filter_gggenes_remove.txt",header = T)
dummies <- make_alignment_dummies(
  genes,
  ggplot2::aes(xmin = START, xmax = END, y = PLAS, id = CLASS),
  on = "aln"
)
dummies$GENE <- rep("aln",times = 98)
dummies$strand <- rep("1", times = 98)
a <- ggplot2::ggplot(genes, aes(xmin = START, xmax = END, y = PLAS, fill = CLASS, label = GENE,forward = strand)) + 
  geom_gene_arrow(arrowhead_height = unit(3, "mm"), arrowhead_width = unit(1, "mm")) +
  geom_gene_label(align = "left",min.size = 2) +  geom_blank(data = dummies) +
  facet_wrap(~ PLAS, scales = "free", ncol = 1) + theme_genes() +
  scale_fill_manual(values= c("#2c3e50","#a4cfe6","#cff5f5","#b4dc94","#e88ae9","#b4a996","#f4c398","#F50057","#ef5350","#ff7e00","#cab2d5","#6a3d9b","#fef59a"))
ggsave(a, file='gggenes.pdf', width=21, height=58.8, limitsize = FALSE) 
 

  

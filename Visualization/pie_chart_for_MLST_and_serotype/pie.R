library("ggplot2")
data <- read.table("mlst_input.txt",header = F)
data$V1 <- factor(data$V1,levels = c("ST410","ST88","ST101","ST117","ST156","ST10","ST58","ST354","ST206","ST744","ST617","ST167","ST23","ST457","other"))
p <- ggplot(data, aes(x = "", y = V2, fill = V1)) + 
  geom_bar(stat = "identity") + scale_fill_manual(values = c("#ff4500","#33a1c9","#00c78c","#0000ff","#b03060","#2e8b57","#f0e68c","#9c661f","#a39480","#f0ffff","#faebd7","#bdfcc9","#6a5acd","#e3a869","#f5f4f2")) +
  coord_polar(theta = "y") +
  labs(title = "Pie Chart Example")
p
ggsave("mlst.pdf",p,width = 6,height = 6)

data <- read.table("ser_com_input.txt",header = F)
data$V1 <- factor(data$V1,levels = c("O89:H9","O8:H19","-:H9","O8:H9","O89:H10","-:H28","-:H12","O11:H25","O8:H45","O141:H5","O11:H4","-:H26","other"))
p <- ggplot(data, aes(x = "", y = V2, fill = V1)) + 
  geom_bar(stat = "identity") + scale_fill_manual(values = c("#eeca4a","#d25238","#7e245c","#143e50","#24366e","#0a66c2","#83941f","#e7a33e","#f5987e","#56687a","#915907","#44712e","#f5f4f2")) +
  coord_polar(theta = "y") +
  labs(title = "Pie Chart Example")
p
ggsave("ser_com.pdf",p,width = 6,height = 6)

library("ggplot2")
data <- read.table("source.txt",header = F)
data$V1 <- factor(data$V1,levels = c("Lung","Brain","Liver","Trachea","Unknown","Joint","Kidney","Spleen","Milk","Heart","Fluid","Gallbladder"))
p <- ggplot(data, aes(x = "", y = V2, fill = V1)) + 
  geom_bar(stat = "identity") + scale_fill_manual(values = c("#E59495","#4953A5","#2E3966","#5A1316","#d4c99e","#a25016","#86898c","#f9e498","#566127","#b5c327","#109dc0","#685c53")) +
  coord_polar(theta = "y") +
  labs(title = "Pie Chart Example")
p

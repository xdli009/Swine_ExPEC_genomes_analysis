library("UpSetR")
s <- read.csv("AR_profile.csv",header = T)
upset(s, nsets = 7, mb.ratio = c(0.7, 0.3),order.by = c("freq","degree"), decreasing = c(TRUE,TRUE),
      point.size = 4.5,line.size = 0.5,mainbar.y.label = "Number of isolates", sets.x.label = "Number of isolates per drug class",
      text.scale = c(2, 2, 1.75, 2, 2, 1.75))

library(readr)
elect <- read_csv("C:/Users/Stephen/Downloads/elect.csv")
View(elect)
names(elect)
summary(elect)
elect.sub <- subset(elect,as.numeric(BushPct)>as.numeric(KerryPct))
elect.sub
nrow(elect.sub)

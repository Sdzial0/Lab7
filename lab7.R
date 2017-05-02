library("arules");
library("arulesViz");
library(readr)
admissions <- read_csv("C:/Users/Stephen/Downloads/binary.csv")
View(admissions)
col_names <- names(admissions)
admissions[,col_names] <- lapply(admissions[,col_names] , factor)
rules.all <- apriori(admissions)
rules <- apriori(admissions, control = list(verbose=F),
                 parameter = list(minlen=2, supp=0.005, conf=0.8),
                 appearance = list(rhs=c("admit=0", "admit=1"),
                                      default="lhs"))
quality(rules) <- round(quality(rules), digits=3)
rules.sorted <- sort(rules, by="lift")
inspect(rules.sorted)

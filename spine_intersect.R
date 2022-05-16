sample_78 <- read.csv(file="78.csv", header = F)
sample_66 <- read.csv(file="66.csv", header= F)
sample_70 <- read.csv(file="70.csv", header = F)
sample_42 <- read.csv(file="42.csv", header= F)
sample_48 <- read.csv(file="48.csv", header = F)
sample_65 <- read.csv(file="65.csv", header= F)
sample_74 <- read.csv(file="74.csv", header = F)
sample_91 <- read.csv(file="91.csv", header= F)
sample_80 <- read.csv(file="80.csv", header= F)


skullbase_genes <- as.data.frame(intersect(sample_80$V1,sample_48$V1))


spine_genes <- as.data.frame(intersect(intersect(intersect(intersect(intersect(intersect(sample_42$V1,sample_65$V1),sample_66$V1),sample_70$V1),sample_74$V1),sample_78$V1),sample_91$V1))

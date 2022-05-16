df_genes <- read.csv(file = "genes_id .csv", sep = ";", header=T,fill=T,row.names = NULL)



snpeff_50 <- unique(read.csv(file= "snpeff_50.csv", sep = ";", header=T,fill=T,row.names = NULL))
snpeff_52 <- unique(read.csv(file= "snpeff_52.csv", sep = ";", header=T,fill=T,row.names = NULL))
snpeff_54 <- unique(read.csv(file= "snpeff_54.csv", sep = ";", header=T,fill=T,row.names = NULL))
snpeff_62 <- unique(read.csv(file= "snpeff_62.csv", sep = ";", header=T,fill=T,row.names = NULL))
snpeff_81 <- unique(read.csv(file= "snpeff_81.csv", sep = ";", header=T,fill=T,row.names = NULL))
snpeff_82 <- unique(read.csv(file= "snpeff_82.csv", sep = ";", header=T,fill=T,row.names = NULL))
snpeff_83 <- unique(read.csv(file= "snpeff_83.csv", sep = ";", header=T,fill=T,row.names = NULL))
snpeff_84 <- unique(read.csv(file= "snpeff_84.csv", sep = ";", header=T,fill=T,row.names = NULL))
snpeff_85 <- unique(read.csv(file= "snpeff_85.csv", sep = ";", header=T,fill=T,row.names = NULL))28
snpeff_87 <- unique(read.csv(file= "snpeff_87.csv", sep = ";", header=T,fill=T,row.names = NULL))19
snpeff_88 <- unique(read.csv(file= "snpeff_88.csv", sep = ";", header=T,fill=T,row.names = NULL))
snpeff_90 <- unique(read.csv(file= "snpeff_90.csv", sep = ";", header=T,fill=T,row.names = NULL))28

snp_genes <- as.data.frame(intersect(snpeff_50$X.GeneName,intersect(snpeff_52$X.GeneName,intersect(snpeff_62$X.GeneName,intersect(snpeff_81$X.GeneName,intersect(snpeff_82$X.GeneName,intersect(snpeff_83$X.GeneName,snpeff_84$X.GeneName)))))))
                       
snp_genes <- as.data.frame(intersect(snpeff_82$X.GeneName,intersect(snpeff_50$X.GeneName, snpeff_62$X.GeneName)))
                                                                 
final_genes <- intersect(df_genes$ESPN,snp_genes$`intersect(snpeff_82$X.GeneName, intersect(snpeff_50$X.GeneName, snpeff_62$X.GeneName))`)


snp_final_genes <- read.table(file = "skull_snpeff_finalgenes.txt")

final_genes_2 <- intersect(df_genes$ESPN, final_genelist$dfs)

write.table(final_genes_2, "skull_intersect_finalgenes.txt")


write.table(final_genes_2, "final_genes_20cutoff.txt")


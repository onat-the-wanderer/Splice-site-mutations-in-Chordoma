
#Read files
data_files <- list.files()  # Identify file names
for(i in 1:length(data_files)) {
  assign(paste0("data", i),
         as.matrix(read.csv2(paste0("/Users/onat/Desktop/RankAggregationSnpeff/skull_snpeff kopyası/",
                                    data_files[i]))))
}

#Rank Agg
df_list = list(data1,data2,data3,data4,data5,data6,data7,data8,data9,data10,data11,data12,data13,data14,data15,data16,data17,data18,data19,data20)
glist <- lapply(df_list, function(x) x[,1])

# Aggregate the inputs
library(RobustRankAggreg)
rra <- aggregateRanks(glist = glist, full = TRUE)
r = rankMatrix(glist)



#Finding the most frequent genes
df_list = rbind(data1,data2,data3,data4,data5,data6,data7,data8,data9,data10,data11,data12,data13,data14,data15,data16,data17,data18,data19,data20)
dfs = df_list[,1]
tb_df = table(dfs)
sorted_genes_freq = as.data.frame(sort(table(dfs), decreasing = TRUE))   # Extract most common value
plot(sorted_genes_freq)
hist(sorted_genes_freq[,2])
abline(v=30, col="red", lwd = 2)
final_genelist = sorted_genes_freq[sorted_genes_freq$Freq >= 50,]
write.table(final_genelist, "skull_snpeff_finalgenes.txt")

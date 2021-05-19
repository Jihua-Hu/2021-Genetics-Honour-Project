
CpGoccurences <- as.data.frame(table(SNP_CpG$CpG))#counting the number of in cis overlapped SNPs
CpGoccurences <- c(CpGoccurences$Freq)
hist(CpGoccurences, 
     main = "In cis distribution of CpGs among SNPs", 
     xlab = "Number of SNPs within 1MB", 
     ylab = "Number of CpGs",
     labels = T)

#As the in cis overlapped SNPs and CpGs were stored in a table, 
#he occurrence of a specific SNP in the table would correspond to the number of the CpGs that around SNPs within 1KB. 
#Similarly, the frequency of the number of CpG sites is equal to the number of SNPs. 
#Thus, in cis distribution can be plotted by using the number of in cis overlapped CpGs against the number of SNPs around each CpG within 1KB.
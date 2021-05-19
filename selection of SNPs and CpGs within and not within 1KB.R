#chose SNPs and CpGs that locate on chromosome 1
G1 <- subset(GWAS_MDDlocation, GWAS_MDDlocation$CHR ==1)#for SNP
E1 <- subset(EWAS_MDDlocation, EWAS_MDDlocation$chr_2 ==1)#for CpG

#The R-loop for select SNPs and CpGs that closed with each other within 1KB
chr1 <- data.frame()
for (i in G1$BP) {
  for (j in E1$MAPINFO) {
    if (i-j <1000) {
      chr1 = rbind(chr1,data.frame(G1$SNP[G1$BP == i],E1$ID[E1$MAPINFO == j]))}
  }
}

#chose SNPs and CpGs on chromosome 2
G2 <- subset(GWAS_MDDlocation, GWAS_MDDlocation$CHR ==2)
E2 <- subset(EWAS_MDDlocation, EWAS_MDDlocation$chr_2 ==2)
chr2 <- data.frame()
for (i in G2$BP) {
  for (j in E2$MAPINFO) {
    if (i-j <1000) {
      chr2 = rbind(chr2,data.frame(G2$SNP[G2$BP == i],E2$ID[E2$MAPINFO == j]))}
  }
}
#SNPs and CpGs on other chromosome undergo same process and not shown in here


#selection of SNPs and CpGs that are not fall into 1KB overlapped region
intransSNP <- GWAS_MDDlocation[!(GWAS_MDDlocation$SNP %in% SNP_CpG$SNP),]
intransCpG <- EWAS_MDDlocation[!(EWAS_MDDlocation$ID %in% SNP_CpG$CpG),]


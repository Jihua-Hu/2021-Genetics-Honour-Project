## Installs biomarRt package using Bioconductor ####
if (!requireNamespace("BiocManager", quietly = TRUE))
 install.packages("BiocManager")

BiocManager::install("biomaRt")

setwd("/Users/elanorhu/Desktop/project data/final choosed")


## Query SNP chromosome position via Ensembl ####

# Loads biomarTt
library("biomaRt")
# Selects mart
ensembl <- useEnsembl("snp",dataset = "hsapiens_snp",GRCh = "37")


#gene annotation
annotation <- getBM(values = GWAS_MDD$SNP,#chosing the SNps that need to be annotated
                        mart = ensembl,
                        filters ="snp_filter",
                        attributes = c("refsnp_id",
                                       "ensembl_gene_stable_id"))


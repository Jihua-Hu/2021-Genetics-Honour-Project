
install.packages("devtools")
devtools::install_github("MRCIEU/TwoSampleMR")
library(TwoSampleMR)

#get the exposure data
exp_dat <- read_exposure_data(
  filename = "GWASsmoking for 2sMR",
  sep= ",",
  snp_col = "SNP",
  beta_col = "OR",
  se_col = "SE",
  effect_allele_col ="A1.y",
  other_allele_col = "A2.y",
  eaf_col = "FRQ_A",
  pval_col = "P.y")
exp_dat$id.exposure = "smoking"

#get the oucome data
outcome_dat <- read_outcome_data(
  filename = "GWASMDD for 2sMR", 
  sep= ",",
  snp_col = "SNP",
  beta_col = "LogOR",
  se_col = "StdErrLogOR",
  effect_allele_col = "A1",
  other_allele_col = "A2",
  eaf_col = "Freq",
  pval_col = "P")
outcome_dat$id.outcome = "MDD"

#remove SNPs have different affect and reference alleles
dat <- harmonise_data(exp_dat, outcome_dat)
tryMR <- dat[1:1000, ]


res <- mr(tryMR)#randomization
 




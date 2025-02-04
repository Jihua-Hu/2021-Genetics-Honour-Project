GWAS_Smoking_plot <- GWAS_Smoking[c(2,1,3,11)]
CMplot(GWAS_Smoking_plot,
       col=c("grey","black"), 
       plot.type="m", 
       LOG10=TRUE, 
       ylim=NULL, 
       threshold=c(2e-8),
       threshold.lty=c(1,2), 
       threshold.lwd=c(2,2), 
       threshold.col=c("black","grey"), 
       amplify=TRUE,
       chr.den.col=c("darkgreen", "yellow","red"),
       cex = c(0.5),
       signal.cex = c(0.5), 
       signal.col=c("red"), 
       file="jpg", 
       memo="GWAS_Smoking",
       dpi=300,
       file.output=TRUE,
       verbose=TRUE)
EWAS_Smoking_plot <- EWAS_Smoking[c(1,6,7,4)]
CMplot(EWAS_Smoking_plot,
       col=c("grey","black"), 
       plot.type="m", 
       LOG10=TRUE, 
       ylim=NULL, 
       threshold=c(1e-7),
       threshold.lty=c(1,2), 
       threshold.lwd=c(2,2), 
       threshold.col=c("black","grey"), 
       amplify=TRUE,
       chr.den.col=c("darkgreen", "yellow","red"),
       cex = c(0.5),
       signal.cex = c(0.5), 
       signal.col=c("red"),
       file="jpg", 
       memo="EWAS_Smoking",
       dpi=300,
       file.output=TRUE,
       verbose=TRUE)

GWAS_MDD_plot <- GWAS_MDD[c(2,9,10,8)]
CMplot(GWAS_MDD_plot,
       col=c("grey","black"), 
       plot.type="m", 
       LOG10=TRUE, 
       ylim=NULL, 
       threshold=c(2e-8),
       threshold.lty=c(1,2), 
       threshold.lwd=c(2,2), 
       threshold.col=c("black","grey"), 
       amplify=TRUE,
       chr.den.col=c("darkgreen", "yellow","red"),
       cex = c(0.5),
       signal.cex = c(0.5), 
       signal.col=c("red"),
       file="jpg", 
       memo="GWAS_MDD",
       dpi=300,
       file.output=TRUE,
       verbose=TRUE)

EWAS_MDD_plot <- EWAS_MDD[c(1,2,3,5)]
CMplot(EWAS_MDD_plot,
       col=c("grey","black"), 
       plot.type="m", 
       LOG10=TRUE, 
       ylim=NULL, 
       threshold=c(7e-8),
       threshold.lty=c(1,2), 
       threshold.lwd=c(2,2), 
       threshold.col=c("black","grey"), 
       amplify=TRUE,
       chr.den.col=c("darkgreen", "yellow","red"),
       cex = c(0.5),
       signal.cex = c(0.5), 
       signal.col=c("red"),
       file="jpg", 
       memo="EWAS_MDD",
       dpi=300,
       file.output=TRUE,
       verbose=TRUE)


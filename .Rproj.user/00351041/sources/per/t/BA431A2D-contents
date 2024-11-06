library (ggmsa)
library (Biostrings)
library (msa)
library(seqinr)
library(ape)
library(phangorn)

cox1 <- readDNAStringSet("Raw_Data/COX1_Aedes.fas")
alineamiento_cox_1 <- msa (cox1, method = "ClustalW")
alineamiento_cox_2 <- msa (cox1, method = "ClustalOmega")

pdf ("Resultados/Alineamiento_Aedes_cox1.pdf")
ggmsa(cox1)
dev.off()

Matriz_Distancias_cox <- seqinr::dist.alignment (
  msaConvert (alineamiento_cox_1,"seqinr::alignment"))
Matriz_Distancias_cox

Arbol_nj_cox <- ape::nj (Matriz_Distancias_cox)
plot (Arbol_nj_cox)
plot (Arbol_nj_cox, "unrooted")

Matriz_Distancias_cox_2 <- seqinr::dist.alignment (
  msaConvert (alineamiento_cox_2,"seqinr::alignment"))
Matriz_Distancias_cox_2

Arbol_nj_cox_2 <- ape::nj (Matriz_Distancias_cox_2)
plot (Arbol_nj_cox_2)
plot (Arbol_nj_cox_2, "unrooted")


pdf ("Resultados/Arboles_Aedes_cox_ClustalW.pdf")
plot (Arbol_nj_cox, main = "Arbol filogenetico de Aedes gen COX1 con ClustalW")
plot (Arbol_nj_cox, "unrooted", main = "Arbol filogenetico de Aedes gen COX1 sin raiz")
dev.off()

pdf ("Resultados/Arboles_Aedes_cox_ClustalOmega.pdf")
plot (Arbol_nj_cox_2, main = "Arbol filogenetico de Aedes gen COX1 con ClustalOmega")
plot (Arbol_nj_cox_2, "unrooted", main = "Arbol filogenetico de Aedes gen COX1 sin raiz")
dev.off()
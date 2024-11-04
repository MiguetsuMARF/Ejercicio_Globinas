library (ggmsa)
library (BioStrings)
library (msa)
library (ape)

globinas <- readDNAStringSet("Raw_Data/DivergentGlobins.fasta")

pdf ("Resultados/Alineamiento_globinas.pdf")
ggmsa(globinas)
dev.off()


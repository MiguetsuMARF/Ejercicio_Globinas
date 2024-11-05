library (ggtree)

ggtree(Arbol_nj, layout="slanted") 

ggtree(Arbol_nj) + 
  geom_point(aes(shape=isTip, color=isTip), size=3)

p <- ggtree(Arbol_nj) + 
  geom_nodepoint(color="#b5e521", alpha=1/4, size=10) 
p + geom_tippoint(color="#FDAC4F", shape=8, size=3)

ggtree(Arbol_nj_cox) + 
  geom_point(aes(shape=isTip, color=isTip), size=3)

p2 <- ggtree(Arbol_nj_cox) + 
  geom_nodepoint(color="#b5e521", alpha=1/4, size=10) 
p2 + geom_tippoint(color="#FDAC4F", shape=8, size=3)

pdf("Resultados/Ejemplos_uso_ggtree.pdf")

ggtree(Arbol_nj) + 
  geom_point(aes(shape=isTip, color=isTip), size=3)
ggtree(Arbol_nj_cox) + 
  geom_point(aes(shape=isTip, color=isTip), size=3)
p + geom_tippoint(color="#FDAC4F", shape=8, size=3)
p2 + geom_tippoint(color="#FDAC4F", shape=8, size=3)
dev.off()
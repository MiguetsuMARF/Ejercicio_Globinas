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

ggtree(Arbol_nj_cox, aes(color=trait), continuous = 'colour', yscale = "trait") + 
  scale_color_viridis_c() + theme_minimal()

ggtree(Arbol_nj_cox, color="orange", size=1) + theme_tree('grey30')

ggtree(Arbol_nj_cox, color="darkgreen", size=1, linetype=4)+
  theme_tree2()

ggtree(Arbol_nj_cox) + geom_text(aes(label=node), hjust=-.3)
pdf("Resultados/Arbol ggtree de Aedes.pdf")
ggtree(Arbol_nj_cox) + 
  geom_tiplab() + 
  geom_hilight(node=74, fill="gold") + 
  geom_hilight(node=48, fill="purple")+
  geom_hilight(node=55, fill="green")
  theme_tree2()+ 
  xlim(0, 0.6)
dev.off()
str(Arbol_nj_cox)
       
tree <- rtree(10)

ggtree(tree, line)+
  geom_tiplab()


# circular

ggtree(tree, layout = "circular")+
  geom_tiplab()

# los objetos de tipo arbol son phylo
# Son tipo lista por lo que podemos acceder a los componentes del arbol para manipularlos.

tree$tip.label <- LETTERS[1:10]

ggtree(tree, layout = "circular")+
  geom_tiplab()
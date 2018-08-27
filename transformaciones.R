###############################################
#### Script para graficar transformaciones #########
#### de caracteres en un arbol filogenetico  ######
#### 		filogéneticos #####################
#### Basado en R por Andrés Ordoñez #####
#### 27 de agosto de 2018 #####################

# Suppose you have a factor representing a character state for each node
# and each tip of a tree. Find a way to associate a color with each branch
# depending on the state at both ends of the branch.

trans.carac <- function(tr, caracteres){    #tr, es un objeto tipo phylo; caracteres es un vector que tiene los estados de caracter de los nodos
  library("ape")
color.ramas <- character(length = length(tr$edge)/2) #crear un vector vacio para los colores
if(length(caracteres)==length(tr$edge)){ #aviso
  fact <- factor(caracteres)  #definir factores de los caracteres
  for (i in seq(1,length(tr$edge)/2)){ 
    if ((caracteres[tr$edge[i,1]]==fact[1])&(caracteres[tr$edge[i,2]]==fact[2])){
      color.ramas[i] <- "red"} #si el primer caracter es "a" y el segundo es "b" asignar color rojo en el vector de colores
      if ((caracteres[tr$edge[i,1]]==fact[2])&(caracteres[tr$edge[i,2]]==fact[1])){
      color.ramas[i] <- "green"} #si el primer caracter es "b" y el segundo es "a" asignar color verde en el vector de colores
    if (caracteres[tr$edge[i,1]]==caracteres[tr$edge[i,2]]){
      color.ramas[i] <- "blue"} #si el primer caracter es igual al segundo asignar el color azul en el vector de colores
  }}
if (caracteres[tr$edge[ i,1]]!=caracteres[tr$edge[ i,2]]){
  warning("las longitudes deben ser iguales para una comparación de ramas ")
}
plot(tr, edge.color = color.ramas) #graficar el arbol con los colores de las ramas basados en el vector de colores
}

##ejemplo

library("ape")

data("bird.orders") #leer el set de datos

trees <- bird.orders #asignar un nombre al arbol

vec.ramas <- rep(c("a","b"),44)  #crear el vector de caracteres

trans.carac(tr = trees,caracteres = vec.ramas)  #ejecutar ejemplo
##

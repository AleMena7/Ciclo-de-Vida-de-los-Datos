###############
## mushrooms ##
###############
data = read.csv("mushrooms.csv")
str(data)

# 1) Crea un gráfico de barras que muestre el porcentaje de setas de cada color que hay en el dataset
col = unique(data$cap.color)  # colores
n.col = rep(NA, length(col))  # inicializo vector con NAs
for (icol in col) {
  n.col[which(col == icol)] = sum(data$cap.color == icol)
}
pcol = 100*n.col/nrow(data); names(pcol) = col  # porcentaje
barplot(pcol, xlab = "Color", ylab = "% of mushrooms")  # barplot

# # 2) Crea un p-color que muestre, para cada color, el número de setas que hay para cada tipo de forma
# sh = unique(data$cap.shape)  # formas
# nobs.col.sh = matrix(NA, nrow = length(col), ncol = length(sh))  # inicializo matriz vacía
# for (icol in col) {  # bucle en colores
#   indcol = which(data$cap.color == icol)
#   data.col = data$cap.shape[indcol]
#   for (ish in sh) {  # bucle en formas
#     nobs.col.sh[which(col == icol), which(sh == ish)] = sum(data.col == ish)
#   }
# }
# rownames(nobs.col.sh) = col  # nombro filas matriz
# colnames(nobs.col.sh) = sh  # nombro columnas matriz

# library(fields)
# image.plot(1:length(col), 1:length(sh), nobs.col.sh,   # p-color
#            xaxt = "n", yaxt = "n",
#            xlab = "color", ylab = "shape",
#            col = terrain.colors(20))
# axis(1, at = 1:length(col), labels = col)  # etiquetas eje x
# axis(2, at = 1:length(sh), labels = sh)  # etiquetas eje y

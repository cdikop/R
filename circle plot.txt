library(circlize)

lncnc <- read.csv('C:/Users/cdiko/Desktop/data/lncRNAnc.csv' ,header = T, encoding = 'UTF-8')
lncsh <- read.csv('C:/Users/cdiko/Desktop/data/lncRNAsh.csv' ,header = T, encoding = 'UTF-8')
#创建一个数据集

circos.initializeWithIdeogram(lnc,species = "hg38")

circos.genomicTrack(lncnc, panel.fun = function(region,value,...){
  circos.genomicLines(region,value,type = 'h',col = rgb(0.7332,0.819,0.9282))
})

circos.genomicTrack(lncsh, panel.fun = function(region,value,...){
  circos.genomicLines(region,value,type = 'h',col = rgb(0.7995,0,0),)
})

library(circlize)

lncnc <- read.csv('C:/Users/cdiko/Desktop/data/lncRNAnc.csv' ,header = T, encoding = 'UTF-8')
lncsh <- read.csv('C:/Users/cdiko/Desktop/data/lncRNAsh.csv' ,header = T, encoding = 'UTF-8')
#读取源文件

circos.initializeWithIdeogram(lnc,species = "hg38") #hg38是当前使用的基因图谱

circos.genomicTrack(lncnc, panel.fun = function(region,value,...){
  circos.genomicLines(region,value,type = 'h',col = rgb(0.7332,0.819,0.9282))
})  #rgb中对应的数字是0-1，与标准RGB数字0-255 可以转换 

circos.genomicTrack(lncsh, panel.fun = function(region,value,...){
  circos.genomicLines(region,value,type = 'h',col = rgb(0.7995,0,0),)
})

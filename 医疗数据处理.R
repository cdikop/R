library(reshape2)
basicdata <- read.csv('2019.09-2020.08.csv', header = TRUE, encoding = 'UTF-8') #读取数据
basicdata <- data.frame(basicdata$入院科室, as.numeric(basicdata$费用))  #转换数据格式
colnames(basicdata) <- c('入院科室','费用')

#融化数据
mdata <- melt(basicdata, na.rm = T ,id.vars = '入院科室')
f_data <- dcast(mdata, 入院科室~variable, fun.aggregate = mean, na.rm = T)
rank_data <- f_data[order(-f_data$'费用'),]


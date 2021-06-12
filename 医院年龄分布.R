library(stringr)
setwd('C:/Users/cdiko/Desktop')
basicdata <- read.csv('cystis.csv', header = TRUE, encoding = 'UTF-8')
age <- basicdata$ÄêÁä
n_age <- as.numeric(stringr::str_extract(age,'\\d*'))

m_age <- data.frame(n_age)

#»æÍ¼
library(ggplot2)
ggplot(m_age, aes(n_age))+geom_histogram(fill = 'darkorchid4',bins = 50)+
  xlim(0,100)

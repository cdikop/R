library(survival)    #进行生存分析的包
library(ggplot2)
library(survminer)  #生成生存曲线的包

KM <- survfit(Surv(time, status) ~ sex, data = lung, type = 'kaplan-meier', conf.type = 'log')
# 对数据进行生存分析

ggsurvplot(KM)  #可以绘制出来生存曲线
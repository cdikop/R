library(ggplot2)
diff <- data.frame( group = factor(LETTERS[1:6]),
                    mean_value = c(18, 20, 22, 23 ,24, 15),
                   sd_value = c(1.4, 1.7, 2.1, 1.2, 1.9, 1.0))
diff$lower = with(diff, mean_value - 1.5*sd_value)
diff$upper = with(diff, mean_value + 1.5*sd_value)
p <- ggplot(diff, aes(group, mean_value)) +
  geom_bar(position = 'dodge', fill = 'black', stat = 'identity')
p + ylab('日你大爷') + xlab('再日你大爷')


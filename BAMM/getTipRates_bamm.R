library(BAMMtools)
tree <- read.tree("lychno_ultrametric_forcedultra_trimmed_ladderized.tre")
edata <- getEventData(tree, eventdata = "lychno_event_data.txt", burnin=0.1)

rates <- as.data.frame(getTipRates(edata, returnNetDiv = TRUE, statistic = "mean")$netdiv.avg)
write.csv(rates, "lychno.tip.rates.bamm.csv")

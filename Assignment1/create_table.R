#Script to generate latex code of table
#from our passenger ridership data
df <- read.csv(file = 'Tabulado-metrorrey.csv')
passng = df$Pasajeros.transportados.....Miles.de.pasajeros.
passng = passng[!is.na(passng)]
passng2018 = passng[1:6]
passng2019 = passng[13:18]
passng2020 = passng[25:30]
table <- data.frame(c("jan", "feb", "mar", "apr", "may", "jun"), passng2018, passng2019, passng2020)
names(table) <- c("month", "2018", "2019", "2020")
library("xtable")
xtable(table)

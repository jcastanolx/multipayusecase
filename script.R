#setwd("~/Documents/GitHub/multipayusecase")
library(jsonlite)
library(googleVis)

df <- fromJSON('data.json')
priceChangeConvYes <- df[df$didConvert == 0,c('priceChanges','total')]
convertTotal <- df[,c('didConvert','total')]
convertTotal$didConvert[convertTotal$didConvert==1] <- 'converted'
convertTotal$didConvert[convertTotal$didConvert==0] <- 'not converted'
chart <- gvisScatterChart(priceChangeConvYes,options=list(title="Customizing points"))
plot(chart)
Pie <- gvisPieChart(convertTotal)
plot(Pie)

coucou <- c('a','b','c')
coucou2 <- c(40,20,11)
coucou3 <- data.frame(
  lettre = c('a','b','c'),
  qty = c(40,20,11)
)
Pie <- gvisPieChart(coucou3)
plot(Pie)
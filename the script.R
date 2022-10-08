
#Import the covid19.analytics library
library(covid19.analytics)

#AggregatedData
ag = covid19.data(case = 'aggregated')
View(ag)

#Time Series of Confirmed Cases
tsc = covid19.data(case = 'ts-confirmed')
View(tsc)

#Summary
report.summary(Nentries = 10,graphical.output = T)

#Totals per location
tots.per.location(tsc,geo.loc = 'North Macedonia')

#Growth rate
growth.rate(tsc,geo.loc = 'North Macedonia')

#time series global data
tsa = covid19.data(case = 'ts-ALL')
View(tsa)

#Totals plot
totals.plt(tsa)

#Totals plot compared to Macedonia
totals.plt(tsa,c('North Macedonia'))

#global map
live.map(tsc)

#SIR Model
generate.SIR.model(tsc,'North Macedonia',tot.population = 1832696 )



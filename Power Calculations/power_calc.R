### Some tentative power calculations for a survey experiment on polarisation 
### and political violence in Brazil



# Clear workspace
rm(list = ls()) 

#Load package
library(pwr)


pwr.400 <- pwr.t.test(n = 400, d = NULL, sig.level = .05, power = .8, alternative = "two.sided", type = "two.sample")
pwr.500 <- pwr.t.test(n = 500, d = NULL, sig.level = .05, power = .8, alternative = "two.sided", type = "two.sample")

plot.power.htest(pwr.400)
plot.power.htest(pwr.500)

pwr.400.r <- pwr.r.test(n = 400, r = NULL, sig.level = .05, power = .8, alternative = "two.sided")
pwr.500.r <- pwr.r.test(n = 500, r = NULL, sig.level = .05, power = .8, alternative = "two.sided", type = "two.sample")

plot.power.htest(pwr.400.r)
plot.power.htest(pwr.500.r)


# Clear workspace
rm(list = ls()) 

#Load packages
library(pwr)

pwr.t.test(n = 1000, d = .5, sig.level = .05, power = .8, alternative = "two.sided", type = "two.sample")




power_calculator <- function(mu_t, mu_c, sigma, alpha=0.05, N){ 
  lowertail <- (abs(mu_t - mu_c)*sqrt(N))/(2*sigma) 
  uppertail <- -1*lowertail 
  beta <- pnorm(lowertail- qnorm(1-alpha/2), lower.tail=TRUE) + 1- pnorm(uppertail- qnorm(1-alpha/2), lower.tail=FALSE) 
  return(beta) 
} 
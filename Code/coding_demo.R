# Analytical workflows : coding demo

#Additional info about code useful for 
#collaborators or future self



# Clear workspace and close all graphics ----------------------------------
# Start script from a clean workspace to prevent errors

rm(list = ls())
graphics.off()



# Generate some data ------------------------------------------------------

n <- 100 #numbers
m <- 2.2 #slope
b <- 1.1 #intercept

x <- rnorm(n = n, mean = 0, sd = 1) #indedpendent variable
noise <- rnorm(n = n, mean = 0, sd = 1)
y <- m * x + b + noise

plot(x,y)

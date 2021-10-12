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

#plot(x,y)  #debug plot


# Do linear regression ----------------------------------------------------

fit <- glm(y~x)


# Plot the results --------------------------------------------------------

par(mar=c(6,7,4,1))

plot(x, y,
     xlab = "normalized velocity",
     ylab = "normalized\nenergy consumption"
     )

abline(fit)




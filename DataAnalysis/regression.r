# Import CSV data
myRegressionData <- read.csv("Data/03_02/regression-r.csv")

# Assign variables to Net Sales and Broadcast
# Correlation between broadcast advertising and sales
NetSales <- myRegressionData$NET.SALES
Broadcast <- myRegressionData$BROADCAST

# Plot data
plot(Broadcast, NetSales)

# Fit a line into the plot pattern
linePattern <- lm(NetSales ~ Broadcast)

# Visualize the line pattern
lines(Broadcast, linePattern$fitted.values)

# Determine relationships (show coefficients)
# Intercept:  net sales
# Broadcast:  increase in net sales
# We can see that there is positive correlation between increased ad broadcast and revenue
linePattern$coefficients
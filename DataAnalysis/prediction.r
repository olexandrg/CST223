# Import CSV data
myPredictionData <- read.csv("Data/04_02/prediction-r.csv")

# Cast sales.classification column from "character" to "factor"
class(myPredictionData$sales.classification)
myPredictionData$sales.classification = as.factor(myPredictionData$sales.classification)

# Verify cast
class(myPredictionData$sales.classification)

# Sum classifications: how many operations are in each group
table(myPredictionData$sales.classification)

# Output our column names for easy reference
names(myPredictionData)

# Install tree package
install.packages('tree')

# Invoke new package
library(tree)

# Configure package to create data tree
myDecisionTree <- tree(sales.classification ~ capita + drive.by.traffic + complimentary.establishments + competition + weather + unemployment.rate + var1 + var2 + var3, data=myPredictionData)

# Format tree data to see actual output
formattedTree <- prune.tree(myDecisionTree,best=3)

# Plot and label formatted tree
# In order to achieve A level sales classification, 
# the complimentary establishment needs to be < 7.5 and unemployment rate needs to be < 0.5
plot(formattedTree)
text(formattedTree)




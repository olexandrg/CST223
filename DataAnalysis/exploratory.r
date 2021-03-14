# Import CSV data
myData <- read.csv("Data/02_02/exploratory-r.csv")

# Get a quick snapshot of the data
head(myData)

# Histogram of the data
hist(myData$cpa)

# Shift the names of each row
# myData now has actual names, making it easier to read
row.names(myData) <- myData$keyword

# Transform data into a matrix to prepare for heatmap generation
myDataMatrix <- data.matrix(myData)

# Generate a data heatmap
# Quick glance at performance of each column
# For example: ctr is "clicks" per "best price airlines" are high, making them more popular with visitors
heatmap(myDataMatrix, Rowv=NA, Colv=NA, scale="column")

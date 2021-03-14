# Import data
myClusterData <- read.csv("Data/05_02/cluster-r.csv")

# Review cluster data
head(myClusterData)

# Standardize cluster data
# Remove first row, only leaving numerical data
myClusterDataStandardized <- scale(myClusterData[-1])

# Display kmeans of standardized data
ourGroups <- kmeans(myClusterDataStandardized, 3)

# Import cluster package
library(cluster)

# Visualize clusters
clusplot(myClusterDataStandardized, ourGroups$cluster)

# Summarize data
# We have 3 groups with distinct behavior, allowing us to further target groups with more specific content
ourGroups$size

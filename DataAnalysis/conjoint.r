# Import Data
# Analyze different data sets and analyze which feature everyone was most interested in
myConjointData <- read.csv("Data/06_02/conjoint-r.csv")
myConjointDataProfilesMatrix <- read.csv("Data/06_02/conjoint-r-profiles-matrix.csv")
myConjointDataLevelNames <- read.csv("Data/06_02/conjoint-r-level-names.csv")


# Install conjoint package. Only do this one. Commenting out for demo since already installed.
#install.packages("conjoint")

# Import conjoint package
library(conjoint)

# Demo: make a data model for first row only
caUtilities(y=myConjointData[1,], x=myConjointDataProfilesMatrix, z=myConjointDataLevelNames)

myConjointData[1,]

# Model all of our data, instead of first record only
# Overall group is interested in filter photos, rather than editing
caUtilities(y=myConjointData, x=myConjointDataProfilesMatrix, z=myConjointDataLevelNames)

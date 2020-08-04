library(readr)
library(tidyverse)
library(plyr)

# Merging test and train datasets.

Xtest <- read.table("X_test.txt")
y <- read.table("y_test.txt")
Xtrain <- read.table("X_train.txt")
ytr <- read.table("y_train.txt")
sub_train <- read.table("subject_train.txt")
sub_test <- read.table("subject_test.txt")
TEST <- cbind(sub_test, y, Xtest)
TRAIN <- cbind(sub_train, ytr, Xtrain)
final <- rbind(TRAIN, TEST)
final <- unique(final)
colnames(final)[c(1,2)] <- c("subject", "y")
finX <- arrange(final, subject, y)

# Extracting mean and standard deviation.

extracted <- read.table("features.txt")
class(extracted)
temporary <- final[,3:563]
colnames(temporary) <- extracted[,2]
extracted <- extracted[,2]
Mean <- grep("mean", extracted)
Std <- grep("std", extracted)
required <- c(Mean, Std)
mands <- temporary[, required]

# Setting activity names, descriptive variable names and creating a new tidy data.

subj <- finX[,2]
subj <- as.factor(subj)
subNames <- read.table("activity_labels.txt")
subNames <- subNames[,2]
lev <- as.vector(levels(subj))
activity <- mapvalues(subj, lev, subNames)

skeleton <- cbind(activity, mands)
subject <- finX[,1]
body <- cbind(subject, skeleton)

i <- 1
findf <- data_frame()
for (sub in 1:30) {
  for (act in subNames) {
    tempo <- filter(body, subject == sub, activity == act)
    means <- colMeans(tempo[,3:81])
    usub <- unique(tempo[,1])
    uact <- unique(tempo[,2])
    this <- cbind(usub, uact, means)
    findf <- rbind(findf, this)
    i <- i + 1
  }
}
head(findf)
meean <- grep("mean", rownames(findf))
sssttd <- grep("std", rownames(findf))
totalMean <- findf[meean, ]
totalStd <- findf[sssttd, ]
meanFre <- grep("meanFreq()", rownames(totalMean))
meanMean <- totalMean[-meanFre, ]
colnames(totalStd)[colnames(totalStd) == "means"] <- "Sd"
rownames(meanMean) <- gsub("-mean()", "", rownames(meanMean))
DF <- cbind(meanMean, Sd = totalStd$Sd)
colnames(DF) <- c("subject", "activity", "mean", "sd")
aciti <- mapvalues(DF$activity, from = c(1:6), to = subNames)
DF <- as.tibble(DF)
again <- DF[, c(1,3,4)]
finally <- add_column(again, aciti, .after = 1)
finally <- as.data.frame(finally)
features <- rownames(DF)
finalDF <- add_column(finally, features, .after = 2)
colnames(finalDF)[colnames(finalDF) == "aciti"] <- "activity"
head(finalDF)

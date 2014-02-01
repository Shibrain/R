trainSetUrl <- "./UCI HAR Dataset/train/X_train.txt"
trainLabelUrl <- "./UCI HAR Dataset/train/y_train.txt"
testSetUrl <- "./UCI HAR Dataset/test/X_test.txt"
testLabelUrl <- "./UCI HAR Dataset/test/y_test.txt"

trainSet <- read.table(trainSetUrl, header=F)
trainLabel <- read.table(trainLabelUrl, header=F)
train <- cbind(trainSet,trainLabel)

testSet <- read.table(testSetUrl, header=F)
testLabel <- read.table(testLabelUrl, header=F)
test <- cbind(testSet, testLabel)

mergedData <-rbind(train,test)
colnames(mergedData)[562] <- "label"
mergedData$label[mergedData$label== 1] <- "walking"
mergedData$label[mergedData$label== 2] <- "walking upstairs"
mergedData$label[mergedData$label== 3] <- "walking downstairs"
mergedData$label[mergedData$label== 4] <- "sitting"
mergedData$label[mergedData$label== 5] <- "standing"
mergedData$label[mergedData$label== 6] <- "laying"

mean <- aggregate(. ~ label, data = mergedData, mean)
sd <- aggregate(. ~ label, data = mergedData, sd)



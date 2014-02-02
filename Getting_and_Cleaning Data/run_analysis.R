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
allLabels <- c("walking", "walking upstairs", "walking downstairs",
              "sitting", "standing", "laying")
for (i in 1:6){
  mergedData$label[mergedData$label== i] <- allLabels[i]
}

means <- aggregate(. ~ label, data = mergedData, mean)
write.csv(means, file="means.csv", row.names=FALSE)
write.table(means, file="means.txt", row.names=FALSE)
sd <- aggregate(. ~ label, data = mergedData, sd)

# average <- data.frame(Activity=mean[,1], Average=rowMeans(mean[,-1]))
# test <- read.table("means.txt", header=T)

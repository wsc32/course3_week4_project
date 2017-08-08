library(data.table)
library(dplyr)

## Download and unzip dataset
if(!file.exists("./data")){dir.create("./data")}
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, destfile="./data/dataset.zip", mode="wb")
unzip("./data/dataset.zip")
setwd("./UCI HAR Dataset")

## Read and merge training and test sets
list.files(recursive=TRUE)

SubjectTrain <- read.table("train/subject_train.txt") 
SubjectTest <- read.table("test/subject_test.txt")

XTrain <- read.table("train/X_train.txt")
XTest <- read.table("test/X_test.txt")

YTrain <- read.table("train/y_train.txt") 
YTest <- read.table("test/y_test.txt") 

Subject <- bind_rows(SubjectTrain, SubjectTest) %>% rename(subject=V1)
Y <- bind_rows(YTrain, YTest) %>% rename(activity=V1)
X <- bind_rows(XTrain, XTest)
Combined <- bind_cols(Subject,Y, X)

## Extract only the measurements on the mean and standard deviation
features <- read.table("features.txt")
meanstd <- grep("mean\\(\\)|std\\(\\)",features$V2)
names <- grep("mean\\(\\)|std\\(\\)",features$V2, value=TRUE)
XMeanStd <- X[,meanstd] 
names(XMeanStd) <- names
CombinedMeanStd <- bind_cols(Subject,Y, XMeanStd)

## Use descriptive activity names to name the activities
activitydf <- read.table("activity_labels.txt")
CombinedMeanStd[, 2] <- activitydf[CombinedMeanStd[, 2], 2]

## Appropriately labels data set with descriptive variable names
names(CombinedMeanStd) <- gsub("\\(\\)","",names(CombinedMeanStd)) %>%
                          tolower
View(CombinedMeanStd)

## Create second, independent tidy data set with the average of each variable
## for each activity and each subject
data2 <- CombinedMeanStd %>%
                group_by(subject,activity) %>%
                summarise_each(funs(mean))
View(data2)
write.table(data2, file='data2.txt', row.names=FALSE)




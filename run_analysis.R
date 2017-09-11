# Author: Surabhi Naik
# Course: Getting and Cleaning Data
# Week 4  Course Project

# Download Zip file
fileURLzip <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileURLzip,destfile = "GettingCleaningProject.zip", method = "curl")

# Unzip data
unzip("GettingCleaningProject.zip")

# Read Data features using read.table()
features <- read.table("UCI HAR Dataset/features.txt")

# Extract features containing mean and std values (feature selection)
interestedFeatures <- grep("mean|std", features$V2)

# Getting names and ID of selected features
namesInterestedFeatures <- grep("mean|std", features$V2, value= TRUE)
IDInterestedFeatures <- grep("mean|std", features$V2)

# Subset of Test data based on interestedFeatures
testX <- read.table("UCI HAR Dataset/test/X_test.txt")
testInterested<-testX[IDInterestedFeatures]

# Subset of Train data based on interestedFeatures
trainX <- read.table("UCI HAR Dataset/train/X_train.txt")
trainInterested<-trainX[IDInterestedFeatures]

# Read Test and Train labels
testY <- read.table("UCI HAR Dataset/test/y_test.txt")
trainY <- read.table("UCI HAR Dataset/train/y_train.txt")

# Read Test and Train Subjects
testSubject <- read.table("UCI HAR Dataset/test/subject_test.txt")
trainSubject <- read.table("UCI HAR Dataset/train/subject_train.txt")

# Create complete Test and Train Data (cbind: Subject, interetsedFeatures, Label)
test <- cbind(testSubject,testInterested, testY)
train <- cbind(trainSubject, trainInterested, trainY)

# Merge Test and Train Data using rbind()
UCI_HARdata <- rbind (test, train)
# Add column names to Merged Data
colnames(UCI_HARdata) = c("Subject", namesInterestedFeatures, "Activity")

# Read activity data
activityData <- read.table("UCI HAR Dataset/activity_labels.txt") 
# Add Column names to activity data
colnames(activityData) = c("ActivityLevel", "ActivityLabel")

# Assign activity labels
UCI_HARdata$Activity <- factor(UCI_HARdata$Activity,levels= activityData$ActivityLevel, labels= activityData$ActivityLabel )

# Calculate mean by subject and activity variables
Mean_Group <- aggregate(.~Subject+Activity, UCI_HARdata,mean, na.rm=TRUE)

# Write tidy data to a text file
write.table(Mean_Group, "MeanGroupTidy.txt", row.names = FALSE)

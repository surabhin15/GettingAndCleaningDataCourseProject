# List of features used
tBodyAcc-mean()-X  
tBodyAcc-mean()-Y  
tBodyAcc-mean()-Z  
tBodyAcc-std()-X  
tBodyAcc-std()-Y  
tBodyAcc-std()-Z  
tGravityAcc-mean()-X  
tGravityAcc-mean()-Y  
tGravityAcc-mean()-Z  
tGravityAcc-std()-X  
tGravityAcc-std()-Y  
tGravityAcc-std()-Z  
tBodyAccJerk-mean()-X  
tBodyAccJerk-mean()-Y  
tBodyAccJerk-mean()-Z  
tBodyAccJerk-std()-X  
tBodyAccJerk-std()-Y  
tBodyAccJerk-std()-Z  
tBodyGyro-mean()-X  
tBodyGyro-mean()-Y  
tBodyGyro-mean()-Z  
tBodyGyro-std()-X  
tBodyGyro-std()-Y  
tBodyGyro-std()-Z  
tBodyGyroJerk-mean()-X  
tBodyGyroJerk-mean()-Y  
tBodyGyroJerk-mean()-Z  
tBodyGyroJerk-std()-X  
tBodyGyroJerk-std()-Y  
tBodyGyroJerk-std()-Z  
tBodyAccMag-mean()  
tBodyAccMag-std()  
tGravityAccMag-mean()  
tGravityAccMag-std()  
tBodyAccJerkMag-mean()  
tBodyAccJerkMag-std()   
tBodyGyroMag-mean()  
tBodyGyroMag-std()  
tBodyGyroJerkMag-mean()  
tBodyGyroJerkMag-std()  
fBodyAcc-mean()-X  
fBodyAcc-mean()-Y  
fBodyAcc-mean()-Z  
fBodyAcc-std()-X  
fBodyAcc-std()-Y  
fBodyAcc-std()-Z  
fBodyAcc-meanFreq()-X  
fBodyAcc-meanFreq()-Y  
fBodyAcc-meanFreq()-Z  
fBodyAccJerk-mean()-X  
fBodyAccJerk-mean()-Y  
fBodyAccJerk-mean()-Z  
fBodyAccJerk-std()-X  
fBodyAccJerk-std()-Y  
fBodyAccJerk-std()-Z  
fBodyAccJerk-meanFreq()-X  
fBodyAccJerk-meanFreq()-Y  
fBodyAccJerk-meanFreq()-Z  
fBodyGyro-mean()-X  
fBodyGyro-mean()-Y  
fBodyGyro-mean()-Z  
fBodyGyro-std()-X  
fBodyGyro-std()-Y  
fBodyGyro-std()-Z  
fBodyGyro-meanFreq()-X  
fBodyGyro-meanFreq()-Y  
fBodyGyro-meanFreq()-Z  
fBodyAccMag-mean()  
fBodyAccMag-std()  
fBodyAccMag-meanFreq()  
fBodyBodyAccJerkMag-mean()  
fBodyBodyAccJerkMag-std()  
fBodyBodyAccJerkMag-meanFreq()  
fBodyBodyGyroMag-mean()  
fBodyBodyGyroMag-std()  
fBodyBodyGyroMag-meanFreq()  
fBodyBodyGyroJerkMag-mean()  
fBodyBodyGyroJerkMag-std()  
fBodyBodyGyroJerkMag-meanFreq()  

# List of activity labels
WALKING (1)  
WALKING_UPSTAIRS (2)  
WALKING_DOWNSTAIRS (3)  
SITTING (4)  
STANDING (5)  
LAYING (6)  

# Instructions for completing the project
Download Zip file  
Unzip data  
Read Data features using read.table()  
Extract features containing mean and std values (feature selection)  
Getting names and ID of selected features  
Subset of Test data based on interestedFeatures  
Subset of Train data based on interestedFeatures  
Read Test and Train labels  
Read Test and Train Subjects  
Create complete Test and Train Data (cbind: Subject, interetsedFeatures, Label)  
Merge Test and Train Data using rbind()  
Add column names to Merged Data  
Read activity data  
Add Column names to activity data  
Assign activity labels  
Calculate mean by subject and activity variables  
Write tidy data to a text file  

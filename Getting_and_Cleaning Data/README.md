## Human Activity Recognition Using Smartphones Data Set 

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, researchers captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz (resulting in 561-feature vector with time and frequency domain variables).

This data file extracts calculated means on the following signals:
tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag


run_analysis.R does the following:

* merges training and test data into one dataset
* adds descriptive activity labels and descriptive column names
* extracts mean() and std() features from complete data set.
* calculates means of these values for each subject across all activities
* creates "tidy" data set with calculated means.
* writes newly created file with means calculations.



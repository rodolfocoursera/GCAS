CodeBook for MeanTidySet.txt file
========================================================

MeanTidySet.txt is a comma-separated file resulting of merge and transform both test and train datasets from 
Human Activity Recognition Using Smartphones Dataset:
        https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

        The original dataset includes the data collected from the embedded accelerometer and gyroscope of a smartphone while a person, wearing the phone, performed six activities (WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING). Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz were recorded. The experiments have been carried out with a group of 30 volunteers.
        The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.


## Variables

The file _MeanTidySet.txt_ contains the following 68 variables and _its mean for each subject and activity_.

The features come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

The set of variables that were estimated from these signals are: 
_mean()_: Mean value
_std()_: Standard deviation

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

        * Subject. The id of the subject of the experiment. A number between 1 and 30
        * Activity. WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING
        *tBodyAcc-mean()-X,tBodyAcc-mean()-Y,tBodyAcc-mean()-Z.
        *tBodyAcc-std()-X,tBodyAcc-std()-Y,tBodyAcc-std()-Z
        *tGravityAcc-mean()-X,tGravityAcc-mean()-Y,tGravityAcc-mean()-Z
        *tGravityAcc-std()-X,tGravityAcc-std()-Y,tGravityAcc-std()-Z
        *tBodyAccJerk-mean()-X,tBodyAccJerk-mean()-Y,tBodyAccJerk-mean()-Z
        *tBodyAccJerk-std()-X,tBodyAccJerk-std()-Y,tBodyAccJerk-std()-Z
        *tBodyGyro-mean()-X,tBodyGyro-mean()-Y,tBodyGyro-mean()-Z
        *tBodyGyro-std()-X,tBodyGyro-std()-Y,tBodyGyro-std()-Z
        *tBodyGyroJerk-mean()-X,tBodyGyroJerk-mean()-Y,tBodyGyroJerk-mean()-Z
        *tBodyGyroJerk-std()-X,tBodyGyroJerk-std()-Y,tBodyGyroJerk-std()-Z
        *tBodyAccMag-mean(),tBodyAccMag-std()
        *tGravityAccMag-mean(), tGravityAccMag-std()
        *tBodyAccJerkMag-mean(),tBodyAccJerkMag-std()
        *tBodyGyroMag-mean(),tBodyGyroMag-std()
        *tBodyGyroJerkMag-mean(),tBodyGyroJerkMag-std()
        *fBodyAcc-mean()-X,fBodyAcc-mean()-Y,fBodyAcc-mean()-Z
        *fBodyAcc-std()-X,fBodyAcc-std()-Y,fBodyAcc-std()-Z
        *fBodyAccJerk-mean()-X,fBodyAccJerk-mean()-Y,fBodyAccJerk-mean()-Z
        *fBodyAccJerk-std()-X,fBodyAccJerk-std()-Y,fBodyAccJerk-std()-Z
        *fBodyGyro-mean()-X,fBodyGyro-mean()-Y,fBodyGyro-mean()-Z
        *fBodyGyro-std()-X,fBodyGyro-std()-Y,fBodyGyro-std()-Z
        *fBodyAccMag-mean(),fBodyAccMag-std()
        *fBodyBodyAccJerkMag-mean(),fBodyBodyAccJerkMag-std()
        *fBodyBodyGyroMag-mean(),fBodyBodyGyroMag-std()
        *fBodyBodyGyroJerkMag-mean(),fBodyBodyGyroJerkMag-std()

## Data
       This script requires these datasets:
               UCI HAR Dataset/train/X_train.txt and 
               UCI HAR Dataset/test/X_test.txt data sets 

       These files were download at 
               https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
               
## Transformations
For each record it is provided:
======================================
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.
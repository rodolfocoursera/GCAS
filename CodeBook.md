CodeBook for MeanTidySet.txt file
========================================================
MeanTidySet.txt is a comma-separated file resulting of merge and transform both test and train datasets from 
Human Activity Recognition Using Smartphones Dataset.

## Variables

The file _MeanTidySet.txt_ contains __a total of 68 variables and 180 records__. 66 variables with __its mean for each subject and activity__ plus the id of the subject and the name of the activity.

The variables contains information collected from the accelerometer and gyroscope 3-axial raw signals (tAcc-XYZ and tGyro-XYZ), filtered to remove noise and processed to separate into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) and to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 

Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Fast Fourier Transform (FFT) was applied to some of these signals (fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag). 

The set of variables that were estimated from these signals was: 
        __mean()__: Mean value
        __std()__: Standard deviation

And __for each variable, the mean of each subject and activity was calculated__ ('-XYZ' is used to denote 3-axial signals in the X, Y and Z directions)
 
__The variables are__ the following:

* Subject. The id of the subject of the experiment. A number between 1 and 30
* Activity. WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING
* tBodyAcc-mean()-X,tBodyAcc-mean()-Y,tBodyAcc-mean()-Z. 
* tBodyAcc-std()-X,tBodyAcc-std()-Y,tBodyAcc-std()-Z
* tGravityAcc-mean()-X,tGravityAcc-mean()-Y,tGravityAcc-mean()-Z
* tGravityAcc-std()-X,tGravityAcc-std()-Y,tGravityAcc-std()-Z
* tBodyAccJerk-mean()-X,tBodyAccJerk-mean()-Y,tBodyAccJerk-mean()-Z
* tBodyAccJerk-std()-X,tBodyAccJerk-std()-Y,tBodyAccJerk-std()-Z
* tBodyGyro-mean()-X,tBodyGyro-mean()-Y,tBodyGyro-mean()-Z
* tBodyGyro-std()-X,tBodyGyro-std()-Y,tBodyGyro-std()-Z
* tBodyGyroJerk-mean()-X,tBodyGyroJerk-mean()-Y,tBodyGyroJerk-mean()-Z
* tBodyGyroJerk-std()-X,tBodyGyroJerk-std()-Y,tBodyGyroJerk-std()-Z
* tBodyAccMag-mean(),tBodyAccMag-std()
* tGravityAccMag-mean(), tGravityAccMag-std()
* tBodyAccJerkMag-mean(),tBodyAccJerkMag-std()
* tBodyGyroMag-mean(),tBodyGyroMag-std()
* tBodyGyroJerkMag-mean(),tBodyGyroJerkMag-std()
* fBodyAcc-mean()-X,fBodyAcc-mean()-Y,fBodyAcc-mean()-Z
* fBodyAcc-std()-X,fBodyAcc-std()-Y,fBodyAcc-std()-Z
* fBodyAccJerk-mean()-X,fBodyAccJerk-mean()-Y,fBodyAccJerk-mean()-Z
* fBodyAccJerk-std()-X,fBodyAccJerk-std()-Y,fBodyAccJerk-std()-Z
* fBodyGyro-mean()-X,fBodyGyro-mean()-Y,fBodyGyro-mean()-Z
* fBodyGyro-std()-X,fBodyGyro-std()-Y,fBodyGyro-std()-Z
* fBodyAccMag-mean(),fBodyAccMag-std()
* fBodyBodyAccJerkMag-mean(),fBodyBodyAccJerkMag-std()
* fBodyBodyGyroMag-mean(),fBodyBodyGyroMag-std()
* fBodyBodyGyroJerkMag-mean(),fBodyBodyGyroJerkMag-std()

## Data
The original dataset was download from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and includes the data collected from the embedded accelerometer and gyroscope of a smartphone while a person, wearing the phone, performed six activities (WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING). Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz were recorded. 

The experiments have been carried out with a group of 30 volunteers. The dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data:
*UCI HAR Dataset/train/X_train.txt and 
*UCI HAR Dataset/test/X_test.txt data sets 


## Transformations

The transformation of the original dataset into the MeanTidySet was the following:

1. Merges the training and the test sets to create one data set   
        # Reading the train and test sets 
        # Merging with activity id
        # Merging with the subject who performed the activity
        # Creating a new dataset with both train and test sets
      
2. Extracts only the measurements on the mean and standard deviation for each measurement
         # Reading features file
         # Extracting column indices for mean and std features using regular expresions  
         # Merging both features indices and sorting it
         # Adding 2 to the indices because the first two columns of the tidySet are ActivityId and Subject 
         # Extracting only the measures for mean and std
     
3. Uses descriptive activity names to name the activities in the data set
         # Getting the numbers and names of the activities
         # Merging ActivityNames with the tidySet
     
4. Appropriately labels the data set columns with descriptive names
     
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
    
         # Calculating the average of each column for each group of activity and subject
         # Trasposing the results to get the feautures in columns and the values for each subject and
         # activity in rows
         # Getting the name of the activities
         # Sorting the results by subject and reordering the columns
         # Writting the dataset to a TXT file

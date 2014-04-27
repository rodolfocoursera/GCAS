GCAS
====

The scripts does the following tasks in order to produce a "tidy" dataset meanTidySet.txt 
that can be used for later analysis:

         1. Merges the training and the test sets to create one data set.
         2. Extracts only the measurements on the mean and standard deviation for each measurement. 
         3. Uses descriptive activity names to name the activities in the data set
         4. Appropriately labels the data set with descriptive names for columns
         5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

       This script requires these datasets:
               UCI HAR Dataset/train/X_train.txt and 
               UCI HAR Dataset/test/X_test.txt data sets 

       These files were download at 
               https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

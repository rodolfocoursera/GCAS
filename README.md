Getting and Cleaning Data Project
====

## Introduction
Starting from two data sets related with Human Activity Recognition Using Smartphones, a new "tidy" dataset is generated with only mean and standard deviation variables and the mean for each subject and activity. 

The original datasets include the data collected from the embedded accelerometer and gyroscope of a smartphone while a person, wearing the phone, performed six activities from walking to laying.

##Files

 * __README.md__. The present file that explains how all the files all related
         
* __CodeBook.md__. Contains the description of the dataset variables and an explanation about the data and its transformation.

* __run_analysis.R__. The script that generates MeanTidySet.txt, a comma-separated file resulting of merge and transform both test and train datasets from Human Activity Recognition Using Smartphones Dataset.

##The script
The script does the following tasks in order to produce a "tidy" dataset meanTidySet.txt that can be used for later analysis:

1. The training and the test sets __were merged__ to create one data set.
2. The variables not related to both the mean and standard deviation were removed. Specifically those whose name not contained __"mean()" or "std()"__, excepting for Subject and ActivityId variables.
3. The __activity Id__ was replaced with the __descriptive activity names__: WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING.
4. The __columns were named with descriptive names__.
5. A data set with the __average of each variable for each activity and each subject__ was created.
6. The data were __sorted by subject and name of the activity__. subject.
7. A TXT comma-separated file was created from the data obtained in the point 6. 

## Prerequisites
The run\_analysis.R script requires these datasets in the same working directory used by the script run\_analysis.R:
* UCI HAR Dataset/train/X_train.txt and 
* UCI HAR Dataset/test/X_test.txt data sets 

These files can be download at 
         https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

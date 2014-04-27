#
# The scripts does the following tasks in order to produce a "tidy" dataset meanTidySet.txt 
# that can be used for later analysis:
#
#         1. Merges the training and the test sets to create one data set.
#         2. Extracts only the measurements on the mean and standard deviation for each measurement. 
#         3. Uses descriptive activity names to name the activities in the data set
#         4. Appropriately labels the data set with descriptive names for columns
#         5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
#
#       This script requires these datasets:
#               UCI HAR Dataset/train/X_train.txt and 
#               UCI HAR Dataset/test/X_test.txt data sets 
#
#       These files were download at 
#               https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

run_analysis  <- function(){
        
     # 1. Merges the training and the test sets to create one data set   
  
        # Reading the train and test sets 
          trainSet  <- read.table(file="UCI HAR Dataset/train/X_train.txt", header=F)
          testSet  <- read.table(file="UCI HAR Dataset/test/X_test.txt", header=F)
        
        # Merging with activity id
          trainActivity  <- read.table(file="UCI HAR Dataset/train/y_train.txt",header=F, col.names="ActivityId")
          trainSet <- cbind(trainActivity, trainSet)
  
          testActivity  <- read.table(file="UCI HAR Dataset/test/y_test.txt",header=F, col.names="ActivityId")
          testSet <- cbind(testActivity, testSet)
     
        # Merging with the subject who performed the activity
          trainSubject  <- read.table(file="UCI HAR Dataset/train/subject_train.txt",header=F, col.names="Subject")
          trainSet <- cbind(trainSubject, trainSet)
             
          testSubject  <- read.table(file="UCI HAR Dataset/test/subject_test.txt",header=F, col.names="Subject")
          testSet <- cbind(testSubject, testSet)
     
        # Creating a new dataset with both train and test sets
          tidySet  <- rbind(trainSet, testSet)
     
     # 2. Extracts only the measurements on the mean and standard deviation for each measurement
         # Reading features file
           features  <- read.table(file="UCI HAR Dataset/features.txt", header=F, col.names=c("id", "name"))
            
         # Extracting column indices for mean and std features using regular expresions  
           meanFeaturesIndex  <- features[grep(pattern="mean()",features$name,fixed=T),1]
           stdFeaturesIndex   <- features[grep(pattern="std()",features$name,fixed=T),1]
        
         # Merging both features indices and sorting it
           selectedFeaturesIndex  <- sort(c(meanFeaturesIndex, stdFeaturesIndex))
     
         # Adding 2 to the indices because the first two columns of the tidySet are ActivityId and Subject 
           tidySetFeaturesIndex  <- selectedFeaturesIndex + 2
     
         # Extracting only the measures for mean and std
           tidySet  <- tidySet[,c(1,2,tidySetFeaturesIndex)]
     
     # 3. Uses descriptive activity names to name the activities in the data set
         # Getting the numbers and names of the activities
           ActivityNames  <- read.table(file="UCI HAR Dataset/activity_labels.txt", header=F, col.names=c("ActivityId","Activity"))
          
         # Merging ActivityNames with the tidySet and removing ActivityId
           #tidySet  <- merge(x=tidySet, y=ActivityNames, by="ActivityId")[,1:length(tidySet)+1]
         
         # Merging ActivityNames with the tidySet
           tidySet  <- merge(x=tidySet, y=ActivityNames, by="ActivityId")
     
     # 4. Appropriately labels the data set columns with descriptive names
           names(tidySet)  <- c("ActivityId","Subject",as.character(features[selectedFeaturesIndex,2]),"Activity")
        
     
     # 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
    
         # Calculating the average of each column for each group of activity and subject
           meanTidySet  <- sapply(split(x=tidySet,f=list(tidySet$Activity,tidySet$Subject))
                                   ,function(x) colMeans(x[,1:length(tidySet)-1]))

         # Trasposing the results to get the feautures in columns and the values for each subject and
         # activity in rows
           meanTidySet  <- t(meanTidySet)
           
         # Getting the name of the activities
           meanTidySet  <- merge(x=meanTidySet, y=ActivityNames, by="ActivityId")

         # Sorting the results by subject and reordering the columns
           meanTidySet  <- meanTidySet[order(meanTidySet$Subject),c(2,length(tidySet),4:length(tidySet)-1)]
     
         # Writting the dataset to a TXT file
          write.table(x=meanTidySet, file="meanTidySet.txt", sep=",", row.names=F, col.names=T)

}
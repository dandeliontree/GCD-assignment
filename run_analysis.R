##Coursera Getting and Cleaning Data assignemnt

## SET-up the environment.

packages <- c("downloader", "plyr")
if (length(setdiff(packages, rownames(installed.packages()))) > 0) {
  install.packages(setdiff(packages, rownames(installed.packages())))  
}
library(downloader)
library(plyr)

WORKING.DIR <- 'E://Coursera//Data_Scientist//getting_and_cleaning_data//assignment'
setwd(WORKING.DIR)

## Download and unzip the the raw data set.
url  <-  'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip' 
DEST.FILE <- 'uci_dataset.zip' 
## IF File exists assumption is it has been 
## extracted
if(!file.exists(DEST.FILE)){
  download(url,DEST.FILE) 
  unzip(DEST.FILE)
}

FEATURE.NAMES <- read.table('./UCI HAR Dataset/features.txt')
ACTIVITY.LBLS <- read.table('./UCI HAR Dataset/activity_labels.txt')

TRAIN.SUBJ <- read.table('./UCI HAR Dataset/train/subject_train.txt')
TRAIN.ACT<- read.table('./UCI HAR Dataset/train/y_train.txt')
TRAIN.SET <- read.table('./UCI HAR Dataset/train/X_train.txt')

TEST.SUBJ <-  read.table('./UCI HAR Dataset/test/subject_test.txt')
TEST.ACT  <-  read.table('./UCI HAR Dataset/test/y_test.txt')
TEST.SET  <-  read.table('./UCI HAR Dataset/test/X_test.txt')

FEATURE.NAMES <- as.character(FEATURE.NAMES[, 2])

## STEP 1: Merges the training and the test sets to create one data set.

NEW.TRAIN.SET <- cbind(TRAIN.SUBJ, TRAIN.ACT, TRAIN.SET)
NEW.TEST.SET <- cbind(TEST.SUBJ, TEST.ACT, TEST.SET)

MERGED.DATA <- rbind(NEW.TRAIN.SET, NEW.TEST.SET)
colnames(MERGED.DATA) <- c('subject', 'activity', FEATURE.NAMES)

##  STEP 2. Extracts only the measurements on the mean and standard deviation 
##         for each measurement.
INTEREST.FEATURE.NAMES <- grepl("mean\\(\\)", FEATURE.NAMES) | grepl("std\\(\\)", FEATURE.NAMES)
MERGED.DATA <- MERGED.DATA[, c(TRUE, TRUE, INTEREST.FEATURE.NAMES)]


## STEP 3: Uses descriptive activity names to name the activities 
##         in the data set. 
ACT.ID<-ACTIVITY.LBLS$V1
ACT.STR<-sub("_"," ",ACTIVITY.LBLS$V2)
MERGED.DATA$activity <- mapvalues(MERGED.DATA$activity,ACT.ID,ACT.STR)

## STEP 4: Appropriately labels the data set with descriptive 
##         Variable names.  
colnames(MERGED.DATA) <- gsub('[()-]', '', colnames(MERGED.DATA))

#Looks like there is a bug in the original nameing Body appears twice
#viz. BodyBody -correcting this below
colnames(MERGED.DATA) <- sub('BodyBody', 'body', colnames(MERGED.DATA))

##All variable names to lower
colnames(MERGED.DATA)<-tolower(colnames(MERGED.DATA))

## STEP 5. From the data set in step 4, creates a second, independent tidy data set 
##         with the average of each variable for each activity and each subject.
TIDY.DATA <- ddply(MERGED.DATA, c( 'subject','activity'), numcolwise(mean))
write.table(TIDY.DATA, file = "tidy_data.txt", quote = FALSE,row.names = FALSE, sep=',')
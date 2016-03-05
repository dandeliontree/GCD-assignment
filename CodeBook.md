---
title: "Code Book for Assignment: Getting and Cleaning Data"
author: "Dandeliontree"
date: "5 March 2016"
output: html_document
---


## Original Data
The original daa represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

- [description](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
- [source](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) 

In the abve archive refer to:  

- 'features_info.txt' fro a description of the selected features measured and,
- 'features.txt' for a complete list of the variables.




### Tidy data set

The training and test subsets of the original dataset were combined to produce final raw dataset which was tidied to present the following 68 variables consisting of  

- SUBJECT    - subject idnetifier  
- ACTIVITY   - activity label one of either 'WALKING','WALKING UPSTAIRS','WALKING DOWNSTAIRS','SITTING','STANDING''LAYING'   
  
and the average values of all variables related to mean and std (Standard deviation) measures in the original data set following are a list of the 66 Variable names where mean was repalce with MEAN an std with STD and all hyphens - and parenthesis () and ..... were removed. 

- "tBodyAccMEANX"  
- "tBodyAccMEANY"  
- "tBodyAccMEANZ"             
- "tBodyAccSTDX"  
- "tBodyAccSTDY"  
- "tBodyAccSTDZ"  
- "tGravityAccMEANX"  
- "tGravityAccMEANY"          
- "tGravityAccMEANZ"
- "tGravityAccSTDX"
- "tGravityAccSTDY"          
- "tGravityAccSTDZ"          
- "tBodyAccJerkMEANX"       
- "tBodyAccJerkMEANY"        
- "tBodyAccJerkMEANZ"        
- "tBodyAccJerkSTDX"         
- "tBodyAccJerkSTDY"         
- "tBodyAccJerkSTDZ"        
- "tBodyGyroMEANX"           
- "tBodyGyroMEANY"           
- "tBodyGyroMEANZ"           
- "tBodyGyroSTDX"            
- "tBodyGyroSTDY"           
- "tBodyGyroSTDZ"            
- "tBodyGyroJerkMEANX"       
- "tBodyGyroJerkMEANY"       
- "tBodyGyroJerkMEANZ"       
- "tBodyGyroJerkSTDX"       
- "tBodyGyroJerkSTDY"        
- "tBodyGyroJerkSTDZ"        
- "tBodyAccMagMEAN"          
- "tBodyAccMagSTD"           
- "tGravityAccMagMEAN"      
- "tGravityAccMagSTD"        
- "tBodyAccJerkMagMEAN"      
- "tBodyAccJerkMagSTD"       
- "tBodyGyroMagMEAN"         
- "tBodyGyroMagSTD"         
- "tBodyGyroJerkMagMEAN"     
- "tBodyGyroJerkMagSTD"      
- "fBodyAccMEANX"            
- "fBodyAccMEANY"            
- "fBodyAccMEANZ"           
- "fBodyAccSTDX"             
- "fBodyAccSTDY"             
- "fBodyAccSTDZ"             
- "fBodyAccJerkMEANX"        
- "fBodyAccJerkMEANY"       
- "fBodyAccJerkMEANZ"        
- "fBodyAccJerkSTDX"         
- "fBodyAccJerkSTDY"         
- "fBodyAccJerkSTDZ"         
- "fBodyGyroMEANX"          
- "fBodyGyroMEANY"           
- "fBodyGyroMEANZ"           
- "fBodyGyroSTDX"            
- "fBodyGyroSTDY"            
- "fBodyGyroSTDZ"           
- "fBodyAccMagMEAN"          
- "fBodyAccMagSTD"           
- "fBodyAccJerkMagMEAN"    
- "fBodyAccJerkMagSTD"     
- "fBodyGyroMagMEAN"      
- "fBodyGyroMagSTD"        
- "fBodyGyroJerkMagMEAN"   
- "fBodyGyroJerkMagSTD"

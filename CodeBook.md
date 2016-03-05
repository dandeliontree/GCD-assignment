---
title: "Code Book for Assignment: Getting and Cleaning Data"
author: "Dandeliontree"
date: "5 March 2016"
---

### Original Data
The original daa represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

- [description](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
- [source](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) 

In the above archive (source) refer to:  

- 'features_info.txt' for a description of the selected features measured and,
- 'features.txt' for a complete list of the variables.

### Tidy data set

The training and test subsets of the original dataset were combined to produce a final raw dataset. This merged raw data setwas tidied to present 68 variables in total.  The first two variabiles are subject and activity. In the tidied data set The activity id was replaced with its string value with hypehens '-' removed.

- "subject"    - subject idnetifier  
- "activity"   - activity label one of either 'WALKING','WALKING UPSTAIRS','WALKING DOWNSTAIRS','SITTING','STANDING''LAYING'   
  
The remaining 66 represent the average values of  all variables related to mean and std (Standard deviation) measures in the original data set. Following are a list of the 66 Variable names where mean was repalce with MEAN, std with STD, all hyphens '-' and parenthesis '()' were removed and, 'BodyBody' was replaced with Body. 
          
- "tbodyaccmeanx"  
- "tbodyaccmeany"  
- "tbodyaccmeanz"             
- "tbodyaccstdx"  
- "tbodyaccstdy"  
- "tbodyaccstdz"  
- "tgravityaccmeanx"  
- "tgravityaccmeany"          
- "tgravityaccmeanz"
- "tgravityaccstdx"
- "tgravityaccstdy"          
- "tgravityaccstdz"          
- "tbodyaccjerkmeanx"       
- "tbodyaccjerkmeany"        
- "tbodyaccjerkmeanz"        
- "tbodyaccjerkstdx"         
- "tbodyaccjerkstdy"         
- "tbodyaccjerkstdz"        
- "tbodygyromeanx"           
- "tbodygyromeany"           
- "tbodygyromeanz"           
- "tbodygyrostdx"            
- "tbodygyrostdy"           
- "tbodygyrostdz"            
- "tbodygyrojerkmeanx"       
- "tbodygyrojerkmeany"       
- "tbodygyrojerkmeanz"       
- "tbodygyrojerkstdx"       
- "tbodygyrojerkstdy"        
- "tbodygyrojerkstdz"        
- "tbodyaccmagmean"          
- "tbodyaccmagstd"           
- "tgravityaccmagmean"      
- "tgravityaccmagstd"        
- "tbodyaccjerkmagmean"      
- "tbodyaccjerkmagstd"       
- "tbodygyromagmean"         
- "tbodygyromagstd"         
- "tbodygyrojerkmagmean"     
- "tbodygyrojerkmagstd"      
- "fbodyaccmeanx"            
- "fbodyaccmeany"            
- "fbodyaccmeanz"           
- "fbodyaccstdx"             
- "fbodyaccstdy"             
- "fbodyaccstdz"             
- "fbodyaccjerkmeanx"        
- "fbodyaccjerkmeany"       
- "fbodyaccjerkmeanz"        
- "fbodyaccjerkstdx"         
- "fbodyaccjerkstdy"         
- "fbodyaccjerkstdz" 
- "fbodygyromeanx"          
- "fbodygyromeany"           
- "fbodygyromeanz"           
- "fbodygyrostdx"            
- "fbodygyrostdy"            
- "fbodygyrostdz"           
- "fbodyaccmagmean"          
- "fbodyaccmagstd"           
- "fbodyaccjerkmagmean"    
- "fbodyaccjerkmagstd"     
- "fbodygyromagmean"      
- "fbodygyromagstd"        
- "fbodygyrojerkmagmean"   
- "fbodygyrojerkmagstd"
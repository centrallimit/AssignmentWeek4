# Getting and Cleaning Data Course Project
This repository contains all files of the assignment of week 4 of the Coursera Course "Getting and Cleaning Data".

# R Script
Filename: run_analytics.R

The R script is divided in five parts

# Step 1: Data preparation
* All relevant data is loaded into memory
* Variables will be named according to their feature names
* Combining the different data sources to a unique data set
# Step 2:
* Selection of variables with the "mean" or "std" in their name for further
* Merge the data to the tidy_data set
# 




## STEP 2: Extracts only the measurements on the mean and standard deviation 
## for each measurement
# Selection of all variables from that contain Mean or Std in their name
Test_ES_DF <- data_test[, grep("[Mm]ean|[Ss]td", 
                               names(data_test), value = TRUE)]
Train_ES_DF <- data_train[, grep("[Mm]ean|[Ss]td", 
                                 names(data_train), value = TRUE)]

# Removing unused data frames from memory
rm(data_train)
rm(data_test)

# Merging the test and traing data with corresponding subjects and activities
Test_DF <- cbind(subject_test, activity_test, Test_ES_DF)
Training_DF <- cbind(subject_train, activity_train, Train_ES_DF)

# Setting the corresponding variable names 
names(Test_DF)[1] <- "NSubject"
names(Training_DF)[1] <- "NSubject"
names(Test_DF)[2] <- "NActivity"
names(Training_DF)[2] <- "NActivity"

# Merging the test and train data to one complete dataset
Tidy_Data <- tbl_df(rbind(Test_DF,  Training_DF))
# Removing some data (housekeeping operation)
rm(Test_DF)
rm(Training_DF)

### Step 3: Use descriptive activity names to name the activities in the data set
### 
Tidy_Data$NActivity <- factor(Tidy_Data$NActivity, 
                              levels = LabelActivities[, 1], 
                              labels = LabelActivities[, 2])
### Step 4: Appropiately labels the data set with descriptive variable names
###   

names(Tidy_Data) <- gsub(pattern = "-+|,+|\\(|\\)"
                         , replacement = "", tolower(names(Tidy_Data)))



## Write tidy data set and corresponding variable names to csv files
setwd("~/Documents/GET_CLEAN_TIDY/GET_CLEAN_TIDY/")


## STEP 5: From the data set in step 4, creates a second, independent 
## tidy data set with the average of each variable for each activity
## and each subject

# Computation of each subject and eac
Mean_DF <- Tidy_Data %>%
# Group data set by subject and activity        
group_by(nsubject, nactivity) %>%
# Compute the mean for every variable        
summarise_each(funs(mean))

# Write data set with means to a txt file 
# write.csv(Mean_DF, file = "MEAN_DATA.csv")
write.table(Mean_DF, row.names = FALSE, file = "Tidy_Data.txt")






 

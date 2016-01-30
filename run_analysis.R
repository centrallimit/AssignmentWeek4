###############################################################################
# Project: Getting and Cleaning Data
# 
# Author: Andreas Kunert
# Title: run_analysis.R
###############################################################################
# 
library(dplyr)
library(tidyr)

##### STEP 1: Data preparation
#####

# Setting the working directory 
setwd("~/Documents/GET_CLEAN_TIDY/GET_CLEAN_TIDY/DATA/UCI HAR Dataset/")


# Read Data
# 
# Files containing information about the test group -- TEST SET --- 30% of the 30 volunteers - (9)
# Measurement data 
fileTestData <- "~/Documents/GET_CLEAN_TIDY/GET_CLEAN_TIDY/DATA/UCI HAR Dataset/test/x_test.txt"
# Activity data 
fileTestActivity <- "~/Documents/GET_CLEAN_TIDY/GET_CLEAN_TIDY/DATA/UCI HAR Dataset/test/y_test.txt"
# Subject data
fileSubjectTest <-  "~/Documents/GET_CLEAN_TIDY/GET_CLEAN_TIDY/DATA/UCI HAR Dataset/test/subject_test.txt"



# Files containing information about the test group -- TRAINING SET --- 70% of the 30 volunteers - (21)
# Measurement data 
fileTrainData <- "~/Documents/GET_CLEAN_TIDY/GET_CLEAN_TIDY/DATA/UCI HAR Dataset/train/x_train.txt"
# Activity data
fileTrainActivity <- "~/Documents/GET_CLEAN_TIDY/GET_CLEAN_TIDY/DATA/UCI HAR Dataset/train/y_train.txt"
# Subject data
fileSubjectTrain <- "~/Documents/GET_CLEAN_TIDY/GET_CLEAN_TIDY/DATA/UCI HAR Dataset/train/subject_train.txt"


# Files containing information about the features and activities
# Variable names for the different measurements
fileFeaturesLabel <- "~/Documents/GET_CLEAN_TIDY/GET_CLEAN_TIDY/DATA/UCI HAR Dataset/features.txt"
# Strings for the different activities
fileActivityLabel <- "~/Documents/GET_CLEAN_TIDY/GET_CLEAN_TIDY/DATA/UCI HAR Dataset/activity_labels.txt"


## Loading files into memory
## Test data
data_test <- read.table(fileTestData)
activity_test <- read.table(fileTestActivity)
subject_test <- read.table(fileSubjectTest)
## Training data
data_train <- read.table(fileTrainData)
activity_train <- read.table(fileTrainActivity) 
subject_train <- read.table(fileSubjectTrain)

# Loading features description 
LabelFeatures <- read.table(fileFeaturesLabel)
# Load activity description
LabelActivities <- read.table(fileActivityLabel)
# Setting the variablenames of the data frames
names(data_test) <- LabelFeatures[,2]
names(data_train) <- LabelFeatures[,2]

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

# 
Mean_DF <- Tidy_Data %>%
# Group data set by subject and activity        
group_by(nsubject, nactivity) %>%
# Compute the average for every variable        
summarise_each(funs(mean))

# Write data set with means to a txt file 
write.table(Mean_DF, row.names = FALSE, file = "Tidy_Data.txt")

        












# End of File -- Have a nice day!
###############################################################################

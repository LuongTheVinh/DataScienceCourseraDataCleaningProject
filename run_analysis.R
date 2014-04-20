
### SET PATHS TO DATA:
wd <- getwd()
folder_data <- file.path(wd, "UCI HAR Dataset")
folder_dataTrain <- file.path(folder_data, "train")
folder_dataTest <- file.path(folder_data, "test")
file_activityLabels <- file.path(folder_data, "activity_labels.txt")
file_featureNames <- file.path(folder_data, "features.txt")
file_trainActivityClasses <- file.path(folder_dataTrain, "y_train.txt")
file_trainFeatures <- file.path(folder_dataTrain, "X_train.txt")
file_trainSubjects <- file.path(folder_dataTrain, "subject_train.txt")
file_testAcvitityClasses <- file.path(folder_dataTest, "y_test.txt")
file_testFeatures <- file.path(folder_dataTest, "X_test.txt")
file_testSubjects <- file.path(folder_dataTest, "subject_test.txt")

### READ ACTIVITY LABELS:
activityLabels <- as.character(read.table(file_activityLabels)[, 2])
### READ FEATURE NAMES:
featureNames <- as.character(read.table(file_featureNames)[, 2])

### READ DATASETS:
data_trainActivityClasses <- read.table(file_trainActivityClasses)
data_trainFeatures <- read.table(file_trainFeatures)
data_trainSubjects <- read.table(file_trainSubjects)
data_testActivityClasses <- read.table(file_testAcvitityClasses)
data_testFeatures <- read.table(file_testFeatures)
data_testSubjects <- read.table(file_testSubjects)
### remove path variables:
rm(wd, folder_dataTrain, folder_dataTest,
      file_activityLabels, file_featureNames,
      file_trainActivityClasses, file_trainFeatures, file_trainSubjects,
      file_testAcvitityClasses, file_testFeatures, file_testSubjects)
### folder_data, 
### COMBINE TRAINING & TEST DATASETS:
data_activityClasses <- rbind(data_trainActivityClasses, data_testActivityClasses)
data_features <- rbind(data_trainFeatures, data_testFeatures)
data_subjects <- rbind(data_trainSubjects, data_testSubjects)
### remove separate datasets:
rm(data_trainActivityClasses, data_trainFeatures, data_trainSubjects, 
      data_testActivityClasses, data_testFeatures, data_testSubjects)

### CONVERT ACTIVITY CLASSES SERIES (1, 2, 3, etc.) TO ACTIVITY LABELS SERIES:
data_activityLabels <- as.data.frame(activityLabels[data_activityClasses[, 1]])
### remove activity classes series & activity labels variable:
rm(data_activityClasses, activityLabels)

### LABEL DATASETS' COLUMNS:
colnames(data_activityLabels) <- "activity"
colnames(data_subjects) <- "testSubject"
colnames(data_features) <- featureNames

### EXTRACT ONLY MEAN & STANDARD DEVIATION OF FEATURES:
featureNames <- intersect(grep("mean|std", featureNames, value = TRUE),
      grep("Freq", featureNames, value = TRUE, invert = TRUE))
data_features <- data_features[, featureNames]


### CONVERT FEATURES' SHORT NAMES INTO DESCRIPTIVE NAMES
### & RE-LABEL FEATURES:
featureNames <- gsub("^t", "total", featureNames)
featureNames <- gsub("^f", "frequency", featureNames)
featureNames <- gsub("Acc", "AccelerometerMeasurement", featureNames)
featureNames <- gsub("Gyro", "GyroscopeMeasurement", featureNames)
featureNames <- gsub("Mag", "Magnitude", featureNames)
featureNames <- gsub("BodyBody", "Body", featureNames)
colnames(data_features) <- featureNames
### remove feature names variable:
rm(featureNames)

### COMBINE DATASETS INTO BIG COMMON DATASET:
tidyData <- cbind(data_activityLabels, data_subjects, data_features)
### remove separate datasets:
rm(data_activityLabels, data_subjects, data_features)

### PRODUCE DATASET no. 2 WITH ONLY FEATURES' AVERAGES ACROSS ACTIVITIES & TEST SUBJECTS:
f <- interaction(tidyData$activity, tidyData$testSubject)
tidyData2 <- cbind(as.data.frame(levels(f)), 
      as.data.frame(t(sapply(split(tidyData[, colnames(tidyData)[-c(1, 2)]], f), colMeans))))
colnames(tidyData2)[1] <- "activity . testSubject"
colnames(tidyData2)[-1] <- paste("average_", colnames(tidyData2)[-1], sep = "")
rownames(tidyData2) <- seq_len(nrow(tidyData2))
### remove interaction factor:
remove(f)

### WRITE DATASETS INTO OUTPUT FILES:
file_tidyData = file.path(folder_data, "tidyData.txt")
write.table(tidyData, file_tidyData)
file_tidyData2 = file.path(folder_data, "tidyData2.txt")
write.table(tidyData2, file_tidyData2)
closeAllConnections()
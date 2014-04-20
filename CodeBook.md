# "tidyData.txt" Data Definitions

"activity": factor variable with the following levels corresponding to the classified activities:
* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

"testSubject": numbers 1-30 corresponding to the different volunteers participating in the experiment

Remaining columns have descriptive labels and contain various measurements from the mobile phones' sensor signals. X/Y/Z refers to the axes in the tri-axial measurements.
* totalBodyAccelerometerMeasurement-mean()-X
* totalBodyAccelerometerMeasurement-mean()-Y
* totalBodyAccelerometerMeasurement-mean()-Z
* totalBodyAccelerometerMeasurement-std()-X
* totalBodyAccelerometerMeasurement-std()-Y
* totalBodyAccelerometerMeasurement-std()-Z
* totalGravityAccelerometerMeasurement-mean()-X
* totalGravityAccelerometerMeasurement-mean()-Y
* totalGravityAccelerometerMeasurement-mean()-Z
* totalGravityAccelerometerMeasurement-std()-X
* totalGravityAccelerometerMeasurement-std()-Y
* totalGravityAccelerometerMeasurement-std()-Z
* totalBodyAccelerometerMeasurementJerk-mean()-X
* totalBodyAccelerometerMeasurementJerk-mean()-Y
* totalBodyAccelerometerMeasurementJerk-mean()-Z
* totalBodyAccelerometerMeasurementJerk-std()-X
* totalBodyAccelerometerMeasurementJerk-std()-Y
* totalBodyAccelerometerMeasurementJerk-std()-Z
* totalBodyGyroscopeMeasurement-mean()-X
* totalBodyGyroscopeMeasurement-mean()-Y
* totalBodyGyroscopeMeasurement-mean()-Z
* totalBodyGyroscopeMeasurement-std()-X
* totalBodyGyroscopeMeasurement-std()-Y
* totalBodyGyroscopeMeasurement-std()-Z
* totalBodyGyroscopeMeasurementJerk-mean()-X
* totalBodyGyroscopeMeasurementJerk-mean()-Y
* totalBodyGyroscopeMeasurementJerk-mean()-Z
* totalBodyGyroscopeMeasurementJerk-std()-X
* totalBodyGyroscopeMeasurementJerk-std()-Y
* totalBodyGyroscopeMeasurementJerk-std()-Z
* totalBodyAccelerometerMeasurementMagnitude-mean()
* totalBodyAccelerometerMeasurementMagnitude-std()
* totalGravityAccelerometerMeasurementMagnitude-mean()
* totalGravityAccelerometerMeasurementMagnitude-std()
* totalBodyAccelerometerMeasurementJerkMagnitude-mean()
* totalBodyAccelerometerMeasurementJerkMagnitude-std()
* totalBodyGyroscopeMeasurementMagnitude-mean()
* totalBodyGyroscopeMeasurementMagnitude-std()
* totalBodyGyroscopeMeasurementJerkMagnitude-mean()
* totalBodyGyroscopeMeasurementJerkMagnitude-std()
* frequencyBodyAccelerometerMeasurement-mean()-X
* frequencyBodyAccelerometerMeasurement-mean()-Y
* frequencyBodyAccelerometerMeasurement-mean()-Z
* frequencyBodyAccelerometerMeasurement-std()-X
* frequencyBodyAccelerometerMeasurement-std()-Y
* frequencyBodyAccelerometerMeasurement-std()-Z
* frequencyBodyAccelerometerMeasurementJerk-mean()-X
* frequencyBodyAccelerometerMeasurementJerk-mean()-Y
* frequencyBodyAccelerometerMeasurementJerk-mean()-Z
* frequencyBodyAccelerometerMeasurementJerk-std()-X
* frequencyBodyAccelerometerMeasurementJerk-std()-Y
* frequencyBodyAccelerometerMeasurementJerk-std()-Z
* frequencyBodyGyroscopeMeasurement-mean()-X
* frequencyBodyGyroscopeMeasurement-mean()-Y
* frequencyBodyGyroscopeMeasurement-mean()-Z
* frequencyBodyGyroscopeMeasurement-std()-X
* frequencyBodyGyroscopeMeasurement-std()-Y
* frequencyBodyGyroscopeMeasurement-std()-Z
* frequencyBodyAccelerometerMeasurementMagnitude-mean()
* frequencyBodyAccelerometerMeasurementMagnitude-std()
* frequencyBodyAccelerometerMeasurementJerkMagnitude-mean()
* frequencyBodyAccelerometerMeasurementJerkMagnitude-std()
* frequencyBodyGyroscopeMeasurementMagnitude-mean()
* frequencyBodyGyroscopeMeasurementMagnitude-std()
* frequencyBodyGyroscopeMeasurementJerkMagnitude-mean()
* frequencyBodyGyroscopeMeasurementJerkMagnitude-std()




# "tidyData2.txt" Data Definitions

"activity . testSubject": factor variable capturing 180 interactions among 6 activity classes and 30 test subjects

Remaining columns have descriptive labels and contain the averages of the measurements in "tidyData.txt"
* average_totalBodyAccelerometerMeasurement-mean()-X
* average_totalBodyAccelerometerMeasurement-mean()-Y
* average_totalBodyAccelerometerMeasurement-mean()-Z
* average_totalBodyAccelerometerMeasurement-std()-X
* average_totalBodyAccelerometerMeasurement-std()-Y
* average_totalBodyAccelerometerMeasurement-std()-Z
* average_totalGravityAccelerometerMeasurement-mean()-X
* average_totalGravityAccelerometerMeasurement-mean()-Y
* average_totalGravityAccelerometerMeasurement-mean()-Z
* average_totalGravityAccelerometerMeasurement-std()-X
* average_totalGravityAccelerometerMeasurement-std()-Y
* average_totalGravityAccelerometerMeasurement-std()-Z
* average_totalBodyAccelerometerMeasurementJerk-mean()-X
* average_totalBodyAccelerometerMeasurementJerk-mean()-Y
* average_totalBodyAccelerometerMeasurementJerk-mean()-Z
* average_totalBodyAccelerometerMeasurementJerk-std()-X
* average_totalBodyAccelerometerMeasurementJerk-std()-Y
* average_totalBodyAccelerometerMeasurementJerk-std()-Z
* average_totalBodyGyroscopeMeasurement-mean()-X
* average_totalBodyGyroscopeMeasurement-mean()-Y
* average_totalBodyGyroscopeMeasurement-mean()-Z
* average_totalBodyGyroscopeMeasurement-std()-X
* average_totalBodyGyroscopeMeasurement-std()-Y
* average_totalBodyGyroscopeMeasurement-std()-Z
* average_totalBodyGyroscopeMeasurementJerk-mean()-X
* average_totalBodyGyroscopeMeasurementJerk-mean()-Y
* average_totalBodyGyroscopeMeasurementJerk-mean()-Z
* average_totalBodyGyroscopeMeasurementJerk-std()-X
* average_totalBodyGyroscopeMeasurementJerk-std()-Y
* average_totalBodyGyroscopeMeasurementJerk-std()-Z
* average_totalBodyAccelerometerMeasurementMagnitude-mean()
* average_totalBodyAccelerometerMeasurementMagnitude-std()
* average_totalGravityAccelerometerMeasurementMagnitude-mean()
* average_totalGravityAccelerometerMeasurementMagnitude-std()
* average_totalBodyAccelerometerMeasurementJerkMagnitude-mean()
* average_totalBodyAccelerometerMeasurementJerkMagnitude-std()
* average_totalBodyGyroscopeMeasurementMagnitude-mean()
* average_totalBodyGyroscopeMeasurementMagnitude-std()
* average_totalBodyGyroscopeMeasurementJerkMagnitude-mean()
* average_totalBodyGyroscopeMeasurementJerkMagnitude-std()
* average_frequencyBodyAccelerometerMeasurement-mean()-X
* average_frequencyBodyAccelerometerMeasurement-mean()-Y
* average_frequencyBodyAccelerometerMeasurement-mean()-Z
* average_frequencyBodyAccelerometerMeasurement-std()-X
* average_frequencyBodyAccelerometerMeasurement-std()-Y
* average_frequencyBodyAccelerometerMeasurement-std()-Z
* average_frequencyBodyAccelerometerMeasurementJerk-mean()-X
* average_frequencyBodyAccelerometerMeasurementJerk-mean()-Y
* average_frequencyBodyAccelerometerMeasurementJerk-mean()-Z
* average_frequencyBodyAccelerometerMeasurementJerk-std()-X
* average_frequencyBodyAccelerometerMeasurementJerk-std()-Y
* average_frequencyBodyAccelerometerMeasurementJerk-std()-Z
* average_frequencyBodyGyroscopeMeasurement-mean()-X
* average_frequencyBodyGyroscopeMeasurement-mean()-Y
* average_frequencyBodyGyroscopeMeasurement-mean()-Z
* average_frequencyBodyGyroscopeMeasurement-std()-X
* average_frequencyBodyGyroscopeMeasurement-std()-Y
* average_frequencyBodyGyroscopeMeasurement-std()-Z
* average_frequencyBodyAccelerometerMeasurementMagnitude-mean()
* average_frequencyBodyAccelerometerMeasurementMagnitude-std()
* average_frequencyBodyAccelerometerMeasurementJerkMagnitude-mean()
* average_frequencyBodyAccelerometerMeasurementJerkMagnitude-std()
* average_frequencyBodyGyroscopeMeasurementMagnitude-mean()
* average_frequencyBodyGyroscopeMeasurementMagnitude-std()
* average_frequencyBodyGyroscopeMeasurementJerkMagnitude-mean()
* average_frequencyBodyGyroscopeMeasurementJerkMagnitude-std()

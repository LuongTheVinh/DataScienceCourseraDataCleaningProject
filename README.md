# Data Science (Coursera) Data-Tidying Project

## Original Data Source
Data from experiments involving 30 volunteers performing six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) were obtained via the following link:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The original data, which were split into a training set of over 7,000 cases and a test set of over 2,000 cases, include 561 features representing various measurements obtained from the mobile phones' sensor signals.

## R Script to Consolidate and Tidy Up Data
The R script file "run_analysis.R" contains code to perform the following and create tidy dataset in the form of R data frame "tidyData":

* Merge the training and test datasets into a combined dataset of over 10,000 cases
* Extract only the means and standard deviations of the measured features, resulting in a smaller set of 66 features from the original 561
* Label the classified activities and the features descriptively

The script also creates a second tidy data frame "tidyData2", which captures only the averages of the features in "tidyData" for each activity and each subject.

After the script finishes running, the results are two data frames "tidyData" and "tidyData2", and two corresponding output text files "tidyData.txt" and "tidyData2.txt". Other interim variables are removed to minimize memory usage.

## How to Execute "run_analysis.R"
Do the following to execute the script "run_analysis.R":
* Download and unzip the source data from the above weblink
* Place the data folder "UCI HAR Dataset" in the R working directory
* Run the script "run.analysis.R", which will produce output text files "tidyData.txt" and "tidyData2.txt" in the "UCI HAR Dataset" folder
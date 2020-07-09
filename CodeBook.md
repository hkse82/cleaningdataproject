---
title: "CodeBook"
author: "HK"
date: "09/07/2020"
output: html_document
---


Data

This repository hosts R code and documentation files for the course project in the Getting and Cleaning data course from JHU, available in Coursera. The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set.

The project is based on data from the dataset: Human Activity Recognition Using Smartphones. Information about the data is available at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Further details on the data can be found in the Readme file in the source data, downloadable in Zip file here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Processing

1. Data was downloaded from source file and all files read. 
2. Assign descriptive variable names
3. Combine subject, activities and measurement data for test and train data
4. combine train and test data to one data set.
5. Extract only the measurements on the mean and standard deviation for each measurement.
6. Replace activity numbers with activity names
7. Assign descriptive column names to subject and activity columns
8. Create new data set with average of each variable grouped by subject and activity
9. Write output file of tidy data (point 8) to txt file.


Variables

1. Source data

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'X_train.txt': Training set.

- 'y_train.txt': Training labels.

- 'X_test.txt': Test set.

- 'y_test.txt': Test labels

- 'subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

- 'subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.


2. Combined data sets
- testdf: Combination of subject, activities and measurement data for test data
- traindf: Combination of subject, activities and measurement data for train data
- fullset: test and train data combined
    
3. Column names
- allnames: All names extracted from features
- reducedcolumns: subsetted column names based on mean and standard deviation columns
- reducedset: extraced data with only mean and standard deviation data

4. Tidy data set
- tidydata: data set with average of each variable, by subject and activity


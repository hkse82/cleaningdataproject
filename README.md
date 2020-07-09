This repository hosts R code and documentation files for the course project in the Getting and Cleaning data course from JHU, available in Coursera. The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set.

The project is based on data from the dataset: Human Activity Recognition Using Smartphones, available at:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Files
codebook.md - Describes the files, variables and R operations performed in the project.
run_analysis.R - Contains all R code to clean the data and perform analysis in the project. 
tidydata.txt - An output file of summarised data requested in the last step of the project.

Analysis
The R script run_analysis.R does the following:
1. Read all input files
2. Assign descriptive variable names
3. Combine subject, activities and measurement data for test and train data
4. combine train and test data to one data set.
5. Extract only the measurements on the mean and standard deviation for each measurement.
6. Replace activity numbers with activity names
7. Assign descriptive column names to subject and activity columns
8. Create new data set with average of each variable grouped by subject and activity
9. Write output file of tidy data (point 8) to txt file. 

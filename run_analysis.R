#Read files
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
features <- read.table("./UCI HAR Dataset/features.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
x_train <- read.table("./UCI HAR Dataset/train/x_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
x_test <- read.table("./UCI HAR Dataset/test/x_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")

# Assign descriptive variable names
names(x_train) <- features$V2
names(x_test) <- features$V2

# combine subjects, activities and data variables by columns
testdf <- cbind(subject_test, y_test, x_test)
traindf <- cbind(subject_train, y_train, x_train)

# combine test and train data by rows
fullset <- rbind(testdf, traindf)

# Extract only the measurements on the mean and standard deviation for each measurement.
allnames <- c("subject", "activity", as.character(features$V2)) #Get all variable names
reducedcolumns <- grep("subject|activity|[Mm]ean|std", allnames, value = FALSE) #Create vector with only mean and std measurement variables
reducedset <- fullset[ ,reducedcolumns] #Subset data based on reduced variables

#Replace activity numbers with activity names
reducedset$V1.1 <- activity_labels[reducedset$V1.1,2]

#Assign descriptive column names to subject and activity columns
names(reducedset)[1:2] <- c("subject","activity")

#Create new data set with average of each variable grouped by subject and activity
tidydata <- reducedset %>% group_by(subject, activity) %>% summarise_all(funs(mean))

#Write output file of tidy data to txt format. 
write.table(tidydata, file = "tidydata.txt")
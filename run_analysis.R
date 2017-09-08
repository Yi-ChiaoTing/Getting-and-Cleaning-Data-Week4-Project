# Step 1: downloads and merges the _training_ and _test_ sets to create one data set

if(!file.exists("./data")){dir.create("./data")}
URL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(URL, destfile = "Dataset.zip")
unzip(zipfile = "./data/Dataset.zip",exdir = "./data")
path <- file.path("./data","UCI HAR Dataset")
files <- list.files(path,recursive = TRUE)

dataActivityTest <- read.table(file.path(path,"test","y_test.txt"),header = FALSE)
dataActivityTrain <- read.table(file.path(path,"train","y_train.txt"),header = FALSE)
dataFeaturesTest  <- read.table(file.path(path,"test","x_test.txt" ),header = FALSE)
dataFeaturesTrain <- read.table(file.path(path,"train","x_train.txt"),header = FALSE)
dataSubjectTrain <- read.table(file.path(path,"train","subject_train.txt"),header = FALSE)
dataSubjectTest  <- read.table(file.path(path,"test","subject_test.txt"),header = FALSE)

dataActivity <- rbind(dataActivityTest,dataActivityTrain)
dataFeatures <- rbind(dataFeaturesTest,dataFeaturesTrain)
dataSubject <- rbind(dataSubjectTest,dataSubjectTrain)
dataCombine <- cbind(dataSubject,dataActivity)
fullData <- cbind(dataFeatures,dataCombine)

=============================================================================================================================

# Step 2: sets names to the variables

names(dataActivity) <- c("activity")
dataFeaturesNames <- read.table(file.path(path,"features.txt"),head=FALSE)
names(dataFeatures) <- dataFeaturesNames$V2
names(dataSubject) <- c("subject")

=============================================================================================================================

# Step 3: extracts only the measurements on the mean and standard deviation for each measurement and then subsets the data by appointed variables

subdataFeaturesNames <- dataFeaturesNames$V2[grep("mean\\(\\)|std\\(\\)",dataFeaturesNames$V2)]
selectedNames <- c(as.character(subdataFeaturesNames),"subject","activity")
fullData <- subset(fullData,select=selectedNames)

=============================================================================================================================

# Step 4: labels the data set with descriptive variable names
  - ^t is relabeled by time
  - ^f is relabeled by frequency
  - Acc is relabeled by Accelerometer
  - Gyro is relabeled by Gyroscope
  - Mag is relabeled by Magnitude
  - BodyBody is relabeled by Body

activityLabels <- read.table(file.path(path,"activity_labels.txt"),header = FALSE)
fullData$activity <- factor(fullData$activity,labels=as.character(activityLabels$V2))

names(fullData) <- gsub("^t","time",names(fullData)) 
names(fullData) <- gsub("^f","frequency",names(fullData))
names(fullData) <- gsub("Acc","Accelerometer",names(fullData))
names(fullData) <- gsub("Gyro","Gyroscope",names(fullData))
names(fullData) <- gsub("Mag","Magnitude",names(fullData))
names(fullData) <- gsub("BodyBody","Body",names(fullData))

=============================================================================================================================

# Step 5: creates a second, independent tidy data set with the average of each variable for each activity and each subject

mean_data <- ddply(fullData, .(subject, activity),function(x) colMeans(x[, 1:66]))
write.table(mean_data,"mean_tidy_data.txt",row.name=FALSE)

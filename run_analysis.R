# Load reshape2 library so we can use melt
library(reshape2)

# Pull in the data and merges the training and the test sets to create on data set.
in.data <- rbind(
  cbind(cbind(read.table("UCI HAR Dataset/test/subject_test.txt"),
        read.table("UCI HAR Dataset/test/y_test.txt")),
        read.table("UCI HAR Dataset/test/X_test.txt")),
  cbind(cbind(read.table("UCI HAR Dataset/train/subject_train.txt"),
        read.table("UCI HAR Dataset/train/y_train.txt")),
        read.table("UCI HAR Dataset/train/X_train.txt"))
)

# Label the attributes in the data.frame appropriately.
in.labels <- read.table("UCI HAR Dataset/features.txt")
names(in.data)<-c("subject","activity",as.character(in.labels[,2]))

# Extracts only the measurements on the mean and standard deviation for each measurement.
in.data <- in.data[,c(1:2,grep("*-(std|mean)()-*", names(in.data)))]

# Reads descriptive activity names to name the activities in the data set and
# labels the data set with descriptive activity names.
in.activities <- read.table("UCI HAR Dataset/activity_labels.txt")
in.data[,2]<-as.factor(in.data[,2])
levels(in.data[,2]) <- in.activities[,2]

# Create a second, independent tidy data set with the average of each variable for each activity and each subject.
in.melt <- melt(in.data, 1:2, na.rm=TRUE)
in.mean <- dcast(in.melt, subject + activity ~ ..., mean)

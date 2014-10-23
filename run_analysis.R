x_train <- read.table("./UCI HAR Dataset/train/X_train.txt",header = F)
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt",header = F)
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt",header = F)

features <- read.table("./UCI HAR Dataset/features.txt")
for (i in 1:nrow(features)) {
  names(x_train)[i] <- paste(features$V2[i])
}

names(subject_train)[1] <- paste("subject")
names(y_train)[1] <- paste("label")
train <- cbind(x_train, y_train, subject_train)
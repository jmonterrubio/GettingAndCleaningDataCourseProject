readsubdataset <- function(datasettype, directory = "./UCI HAR Dataset/") {
      #
      # Reads and combine the data of a data set type in a data.frame
      #
      # Args:
      #   datasettype: train or test
      #   directory  : base folder for read
      #
      # Returns:
      #   the combined data
      #
      filename <- paste(directory,datasettype,"/",sep = "")
      # Read datasets
      x_dataset <- read.table(paste(filename,"X_",datasettype,".txt",sep = ""),header = F)
      y_dataset <- read.table(paste(filename,"y_",datasettype,".txt",sep = ""),header = F)
      subject_dataset <- read.table(paste(filename,"subject_",datasettype,".txt",sep = ""),header = F)
      
      # Read feature names and set to x_dataset
      features <- read.table(paste(directory,"features.txt",sep = ""))
      for (i in 1:nrow(features)) {
            names(x_dataset)[i] <- paste(features$V2[i])
      }
      
      # Set column names to y and subject
      names(subject_dataset)[1] <- paste("Subject")
      names(y_dataset)[1] <- paste("Activity")
      
      # Finally combine the datasets
      cbind(x_dataset, y_dataset, subject_dataset)
}

replaceColumnValues <- function(dataset, column_name,
                                directory = "./UCI HAR Dataset/",
                                filename = "activity_labels.txt") {
      #
      # Reads names from the given directory and replaces with the values
      # of the column of input dataset
      #
      # Args:
      #   dataset: input data set
      #   column_name: column to work with
      #   filename: the frame use to replace data
      #   directory: base folder for read
      #
      # Returns:
      #   the input dataset with the values of column replaced
      #
      data_labels <- read.table(paste(directory,filename,sep = ""),header = F)
      for (i in 1:nrow(data_labels)) {
            dataset$Activity[dataset$Activity == data_labels$V1[i]] <- paste(data_labels$V2[i])
      }
      dataset
}

# Merges the training and the test sets to create one data set & 
# appropriately labels the data set with descriptive variable names. 
train <- readsubdataset("train")
test <- readsubdataset("test")
dataset <- rbind(train,test)

# Extracts only the measurements on the mean and standard deviation for each measurement.
mean_std_subset <- subset(test, select=(names(test)[grep('mean()|std()|Subject|Activity',names(test))]))

# Uses descriptive activity names to name the activities in the data set
mean_std_subset <- replaceColumnValues(mean_std_subset, "Activity")

# creates a second, independent tidy data set with the average of each variable for
# each activity and each subject
by_subject_activity <- group_by(mean_std_subset,Subject,Activity) %>%
                       summarise_each(funs(mean))

# output
write.table(by_subject_activity,"ouput.txt",row.name=FALSE)

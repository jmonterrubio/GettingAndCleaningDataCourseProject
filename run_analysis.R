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
      
      # Change the activity values from the y_dataset with its label name
      activity_labels <- read.table(paste(directory,"activity_labels.txt",sep = ""),header = F)
      #for (i in 1:nrow(activity_labels)) {
      #      y_dataset$Activity[y_dataset$Activity == i] <- activity_labels$V2[i]
      #}
      
      # Finally combine the datasets
      cbind(x_dataset, y_dataset, subject_dataset)
}

train <- readsubdataset("train")
test <- readsubdataset("test")
dataset <- rbind(train,test)
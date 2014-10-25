Getting And Cleaning Data Course Project
========================================

The clean dataset is generated using run_analysis.R script. This script works as explained below:

First of all, the library dplyr must be loaded because of some used functions (group_by(), %>%, summarise_each())

Next, the training and the test sets are merged to create one data set. For this purpose we define a new function (readsubdataset) that giving a datasettype and optionally a folder, reads and combine the data of a data set type in a data frame using these steps:
    - Read the three subdatasets from the input folder
    - Set the variable names
    - Combine them all
With this function, we read the train and the test datasets and using rbind() function join both in just one dataset.

Next extracts only the measurements on the mean and standard deviation for each measurement, greping the variable names containing "mean()" or "std()". Don't forgetting including the subject identifier column and the activity measured column.

Next, using a created function replaceVariableNames, we rename the activity valueswith a more descriptive name. This function receives a dataset and a column name and repaces the values with ones given in the optional input directory plus filename.

Next and again using a new function replaceVariableNames the variable names are cleaned and renamed with a more descriptive names.

Next we create a second, independent tidy data set with the average of each variable for each activity and each subject. This is made using the functions group_by and summarise each from the library dplyr previously loaded. The dataset is grouped by the subject and the activity and the result is summarized using the mean function.

Finally the dataset is written in an output file.

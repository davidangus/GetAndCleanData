## This is code to help transform the Samsung dataset containing cell phone telemetry while 
## individuals do different activities.

## The data can be downloaded from the following link:
## https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
## For more information on the data, follow the link:
## http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Once you have downloaded the data, simply extract the zip so the extracted directory is in the same
## directory as the run_analysis.R.

## The output will consist of two tidy data sets contained in the data.frames (in.data,in.mean):
## 1) A row for each sample of a person's activity, with only the mean and standard deviation measures.
## 2) A row for each person's activity and the averages of the measures contained in #1.

## Files in repo and their description:
## README.md - the file you are reading
## CodeBook.md - Contains information on the attributes contained in the tidy data sets.
## tidy1.csv - Dump of first tidy data set, see above section for details
## tidy2.csv - Dump of second tidy data set, see above section for details.

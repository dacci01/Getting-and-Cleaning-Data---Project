#
# The following script is used to manipulate and summarize data collected 
# from 30 subjects, performing a variety of activities while wearing a
# Samsung Galaxy S II smartphone. Measurements were sampled from the embedded
# accelerometers of devices worn by the subjects.
#
# A full description is available from the UCI archive available here: 
# http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
#
# For more information about the dataset contact: activityrecognition@smartlab.ws
#
# Relavant files from the archive used for data processing:
# activity_labesl.txt   - key id to activity name cross-reference
# features.txt          - key id to data field lablel cross-reference
#
# X_train.txt           - training subjects measured and calculated data
# y_train.txt           - training subjects activity id numbers
# subject_train.txt     - training subject id numbers
#
# X_test.txt            - training subjects measured and calculated data
# y_test.txt            - training subjects activity id numbers
# subject_test.txt      - training subject id numbers
#
# This script performs the following operations:
#       1. Merges training and test data files above into a single dataframe.
#       2. Extracts mean and standard deviation measurements only based on feature list.
#       3. Replaces activity identifiers with activity labels from the key/label file.
#       4. Creates variable names labels consistent with original feature list.
#       5. Arranges the data by subject id
#       6. Stores result in dataframe, data.
#       7. Creates dataframe summary_avgs from data with the averages for each variable
#          for each activity and subject.
#
# This script generates two output dataframes, data and summary_avgs. These 
# dataframes have the following contents:
# data                  - 10299 x 81 dataframe
#                         subject id, activity, 79 measurement variables of mean and
#                         standard deviations collected or computed from accelerometer 
#                         data.
# summary_avgs          - 180 x 81 dataframe
#                         subject id, activity, average value of each variable for each 
#                         activity and for each subject.
#
# load useful libraries
  library("dplyr")
  library("data.table")
#
# read training subject data
  x_train<-read.table('X_train.txt')
  y_train<-read.table('y_train.txt')
  s_train<-read.table('subject_train.txt')
  train_rawdata<-cbind(s_train,y_train,x_train)
#
# read test subject data
  x_test<-read.table('X_test.txt')
  y_test<-read.table('y_test.txt')
  s_test<-read.table('subject_test.txt')
  test_rawdata<-cbind(subject=s_test,activity=y_test,x_test)
#
# MERGE training and test sets into one datatable
  raw_data=tbl_df(rbind(test_rawdata,train_rawdata))
#
# EXTRACT MEAN and STANDARD DEVIATION measurements only
  f<-tbl_df(read.table('features.txt'))
  indx<-f[f$V2 %like% 'mean' | f$V2 %like% 'std',1]
  data<-tbl_df(raw_data[,c(1,2,indx+2)])
#
# ADD DESCRIPTIVE VARIABLE NAMES based on "features.txt" file
  colnames(data)<-c('subject','activity',as.character(f[indx,2]))
#
# DEFINE DESCRIPTIVE ACTIVITY NAMES (ie. replace #s with strings)
  al<-read.table("activity_labels.txt")
  data[,2]<-sapply(data[,2],function(x) al$V2[match(x,al$V1)])
# organize data
  data<-arrange(data,subject)
#
# CREATE SUMMARY AVERAGES data.frame
  summary_avgs<-data%>%group_by(subject,activity)%>%summarise_each(funs(mean))
#  write.table(summary_avgs,file='summary_avgs.txt',row.name=F)#
#
# tidy up a little 
#
# uncomment to retain, label and organized raw_data
#  colnames(raw_data)<-c('subject','activity',as.character(f[,2]))
#  raw_data[,2]<-sapply(raw_data[,2],function(x) al$V2[match(x,al$V1)])
#  raw_data<-arrange(raw_data,subject)
  rm(raw_data)
#
# delete unnecssary variables
  rm(x_train,y_train,s_train,train_rawdata)
  rm(x_test,y_test,s_test,test_rawdata)
  rm(f,indx,al)

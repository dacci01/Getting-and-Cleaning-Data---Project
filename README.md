Repo contains the following files:

README.md - this file

run_analysis.R - which performs the following operations to the archive data described below.
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

and
CodeBook.md - a code book that describes the variables within the data set, a brief description of how run_analysis. R processes that data set.


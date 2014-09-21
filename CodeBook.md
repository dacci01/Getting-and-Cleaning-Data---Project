
##Data Code Book


###Detailed Data Archive Description

Human Activity Recognition Using Smartphones Dataset
Version 1.0

Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
Principles: Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.


The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.


The dataset includes the following files:
- 'README.txt'
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.
-For more information about this dataset contact: activityrecognition@smartlab.ws

*License:
Use of this dataset in publications must be acknowledged by referencing the following publication*  

**Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012**

#####This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.



###Data Acquisition, Processing and Variable Description

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag


The set of variables that were estimated from these signals are: 
mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'



###Data Set Variable Descriptions

A subset of the variable descriptions were extracted and processed using the run_analysis. R script. The variables, 81 total, consist of all mean and standard deviation variables along with the subject and activity identifiers from the data archive. Variable labels and data type are described below. 

>**subject**				*Type Integer*  
1-30 based on number of subject in experiment 

>**activity**				*Type Factor*  
6 character labels representing the different subject activities when measurements were collected.
LABELS: SITTING, LAYING, STANDING, WALKING, WALKING_DOWNSTAIRS, and WALKING_UPSTAIRS 

#####Following are time dependent quantities:
	
>**tBodyAcc-mean()-X**		*Type Numeric*  
Mean body acceleration in X-direction. Quantity is a scalar unit, G’s of gravitational acceleration. ( t denotes time     series. )
	
>**tBodyAcc-mean()-Y**		*Type Numeric*  
Mean body acceleration in Y-direction. Quantity is a scalar unit, G’s of gravitational acceleration. ( t denotes time series. )
	
>**tBodyAcc-mean()-Z**		*Type Numeric*  
Mean body acceleration in Z-direction. Quantity is a scalar unit, G’s of gravitational acceleration. ( t denotes time series. )
	
>**tBodyAcc-std()-X**		*Type Numeric*  
Standard deviation of body acceleration in X-direction. Quantity is a scalar unit, G’s of gravitational acceleration. ( t denotes time series. )
	
>**tBodyAcc-std()-Y**		*Type Numeric*  
Standard deviation of body acceleration in Y-direction. Quantity is a scalar unit, G’s of gravitational acceleration. ( t denotes time series. )

>**tBodyAcc-std()-Z**		*Type Numeric*  
Standard deviation of body acceleration in Z-direction. Quantity is a scalar unit, G’s of gravitational acceleration. ( t denotes time series. )
	
>**tGravityAcc-mean()-X**	*Type Numeric*	*Type Numeric*  
Mean gravity acceleration in X-direction. Quantity is a scalar unit, G’s of gravitational acceleration. ( t denotes time series. )
	
>**tGravityAcc-mean()-Y**	*Type Numeric*  
Mean gravity acceleration in Y-direction. Quantity is a scalar unit, G’s of gravitational acceleration. ( t denotes time series. )
	
>**tGravityAcc-mean()-Z**	*Type Numeric*  
Mean gravity acceleration in Z-direction. Quantity is a scalar unit, G’s of gravitational acceleration. ( t denotes time series. )
	
>**tGravityAcc-std()-X**	*Type Numeric*  
Standard deviation of gravity acceleration in X-direction. Quantity is a scalar unit, G’s of gravitational acceleration. ( t denotes time series. )
	
>**tGravityAcc-std()-Y**	*Type Numeric*  
Standard deviation of gravity acceleration in Y-direction. Quantity is a scalar unit, G’s of gravitational acceleration. ( t denotes time series. )
	
>**tGravityAcc-std()-Z**	*Type Numeric*  
Standard deviation of gravity acceleration in Z-direction. Quantity is a scalar unit, G’s of gravitational acceleration. ( t denotes time series. )

>**tBodyAccJerk-mean()-X**	*Type Numeric*  
Mean jerk body acceleration in X-direction. Quantity is the time rate of change of acceleration, units, G’s/second. ( t denotes time series. )

>**tBodyAccJerk-mean()-Y**	*Type Numeric*  
Mean jerk body acceleration in Y-direction. Quantity is the time rate of change of acceleration, units, G’s/second. ( t denotes time series. )

>**tBodyAccJerk-mean()-Z**	*Type Numeric*  
Mean jerk body acceleration in Z-direction. Quantity is the time rate of change of acceleration, units, G’s/second. ( t denotes time series. )

>**tBodyAccJerk-std()-X	**	*Type Numeric*  
Standard deviation of the jerk body acceleration in X-direction. Quantity is the time rate of change of acceleration, units, G’s/second. ( t denotes time series. )

>**tBodyAccJerk-std()-Y**	*Type Numeric*  
Standard deviation of the jerk body acceleration in Y-direction. Quantity is the time rate of change of acceleration, units, G’s/second. ( t denotes time series. )

>**tBodyAccJerk-std()-Z**	*Type Numeric*  
Standard deviation of the jerk body acceleration in Z-direction. Quantity is the time rate of change of acceleration, units, G’s/second. ( t denotes time series. )

>**tBodyGyro-mean()-X**		*Type Numeric*  
Mean body angular velocity in X-direction. Quantity has units of radians/second. ( t denotes time series. )

>**tBodyGyro-mean()-Y**		*Type Numeric*  
Mean body angular velocity in Y-direction. Quantity has units of radians/second. ( t denotes time series. )

>**tBodyGyro-mean()-Z**		*Type Numeric*  
Mean body angular velocity in Z-direction. Quantity has units of radians/second. ( t denotes time series. )

>**tBodyGyro-std()-X**		*Type Numeric*  
Standard deviation of the body angular velocity in X-direction. Quantity has units of radians/second. ( t denotes time series. )

>**tBodyGyro-std()-Y**		*Type Numeric*  
Standard deviation of the body angular velocity in Y-direction. Quantity has units of radians/second. ( t denotes time series. )

>**tBodyGyro-std()-Z**	*Type Numeric*  
Standard deviation of the body angular velocity in Z-direction. Quantity has units of radians/second. ( t denotes time series. )

>**tBodyGyroJerk-mean()-X**	*Type Numeric*  
Mean body gyro-jerk product in X-direction. Quantity has units of G’s/sq.second. ( t denotes time series. )

>**tBodyGyroJerk-mean()-Y**	*Type Numeric*  
Mean body gyro-jerk product in X-direction. Quantity has units of G’s/sq.second. ( t denotes time series. )

>**tBodyGyroJerk-mean()-Z**	*Type Numeric*  
Mean body gyro-jerk product in X-direction. Quantity has units of G’s/sq.second. ( t denotes time series. )

>**tBodyGyroJerk-std()-X**	*Type Numeric*  
Standard deviation of the body gyro-jerk product in X-direction. Quantity has units of G’s/sq.second. ( t denotes time series. )

>**tBodyGyroJerk-std()-Y**	*Type Numeric*  
Standard deviation of the body gyro-jerk product in X-direction. Quantity has units of G’s/sq.second. ( t denotes time series. )

>**tBodyGyroJerk-std()-Z**	*Type Numeric*  
Standard deviation of the body gyro-jerk product in X-direction. Quantity has units of G’s/sq.second. ( t denotes time series. )

>**tBodyAccMag-mean()**		*Type Numeric*  
Mean body acceleration magnitude. Quantity is a scalar unit, G’s of gravitational acceleration. It is the square root of the sum of the squares of the XYZ components. ( t denotes time series. )

>**tBodyAccMag-std()**	*Type Numeric*  
Standard deviation of the body acceleration magnitude. Quantity is a scalar unit, G’s of gravitational acceleration. ( t denotes time series. )

>**tGravityAccMag-mean()**	*Type Numeric*  
Mean gravity acceleration magnitude. Quantity is a scalar unit, G’s of gravitational acceleration. It is the square root of the sum of the squares of the XYZ components. ( t denotes time series. )

>**tGravityAccMag-std()**	*Type Numeric*  
Standard deviation of the gravity acceleration magnitude. Quantity is a scalar unit, G’s of gravitational acceleration.( t denotes time series. )

>**tBodyAccJerkMag-mean()**	*Type Numeric*  
Mean jerk body acceleration magnitude. Quantity is the time rate of change of acceleration, units, G’s/second. It is the square root of the sum of the squares of the XYZ components. ( t denotes time series. )

>**tBodyAccJerkMag-std()**	*Type Numeric*  
Standard deviation of the gravity acceleration magnitude. Quantity is the time rate of change of acceleration, units, G’s/second.( t denotes time series. )
 
>**tBodyGyroMag-mean()**	*Type Numeric*  
Mean jerk body acceleration magnitude.Quantity has units of radians/second. It is the square root of the sum of the squares of the XYZ components. ( t denotes time series. )

>**tBodyGyroMag-std()**		*Type Numeric*  
Standard deviation of the gravity acceleration magnitude. Quantity has units of radians/second. ( t denotes time series. )
  
>**tBodyGyroJerkMag-mean()**	*Type Numeric*  
Mean body gyro-jerk product magnitude. Quantity has units of G’s/sq.second. It is the square root of the sum of the squares of the XYZ components. ( t denotes time series. )

>**tBodyGyroJerkMag-std()**	*Type Numeric*  
Standard deviation of the body gyro-jerk product magnitude. Quantity has units of G’s/sq.second. ( t denotes time series. )
  

#####Following are time dependent quantities:

>**fBodyAcc-mean()-X**		*Type Numeric*  
FFT of the mean body acceleration in X-direction. Quantity is a scalar unit, G’s of gravitational acceleration. ( f denotes frequency domain. )
	
>**fBodyAcc-mean()-Y**		*Type Numeric*  
FFT of the mean body acceleration in Y-direction. Quantity is a scalar unit, G’s of gravitational acceleration. ( f denotes frequency domain. )
	
>**fBodyAcc-mean()-Z**		*Type Numeric*  
FFT of the mean body acceleration in Z-direction. Quantity is a scalar unit, G’s of gravitational acceleration.  ( f denotes frequency domain. )
	
>**fBodyAcc-std()-X**		*Type Numeric*  
Standard deviation of the FFT of body acceleration in X-direction. Quantity is a scalar unit, G’s of gravitational acceleration.  ( f denotes frequency domain. )
	
>**fBodyAcc-std()-Y**		*Type Numeric*  
Standard deviation of the FFT of body acceleration in Y-direction. Quantity is a scalar unit, G’s of gravitational acceleration.  ( f denotes frequency domain. )

>**fBodyAcc-std()-Z**			*Type Numeric*  
Standard deviation of the FFT of body acceleration in Z-direction. Quantity is a scalar unit, G’s of gravitational acceleration.  ( f denotes frequency domain. )

>**fBodyAcc-meanFreq()-X**		*Type Numeric*  
Mean body acceleration frequency in X-direction. Quantity is a scalar unit, Hz. ( f denotes frequency domain. )
	
>**fBodyAcc-meanFreq()-Y**		*Type Numeric*  
Mean body acceleration frequency in Y-direction. Quantity is a scalar unit, Hz. ( f denotes frequency domain. )

>**fBodyAcc-meanFreq()-Z**		*Type Numeric*  
Mean body acceleration frequency in Z-direction. Quantity is a scalar unit, Hz. ( f denotes frequency domain. )
	
>**fBodyAccJerk-mean()-X**	*Type Numeric*  
FFT of the mean body jerk acceleration in X-direction. Quantity is the time rate of change of acceleration, units, G’s/second.  ( f denotes frequency domain. )
	
>**fBodyAccJerk-mean()-Y**	*Type Numeric*  
FFT of the mean body jerk acceleration in Y-direction. Quantity is the time rate of change of acceleration, units, G’s/second. ( f denotes frequency domain. )
	
>**fBodyAccJerk-mean()-Z**	*Type Numeric*  
FFT of the mean body jerk acceleration in Z-direction. Quantity is the time rate of change of acceleration, units, G’s/second.   ( f denotes frequency domain. )
	
>**fBodyAccJerk-std()-X**		*Type Numeric*  
Standard deviation of the FFT of body jerk acceleration in X-direction. Quantity is the time rate of change of acceleration, units, G’s/second.   ( f denotes frequency domain. )
	
>**fBodyAccJerk-std()-Y**		*Type Numeric*  
Standard deviation of the FFT of body jerk acceleration in Y-direction. Quantity is the time rate of change of acceleration, units, G’s/second.   ( f denotes frequency domain. )

>**fBodyAccJerk-std()-Z**		*Type Numeric*  
Standard deviation of the FFT of body jerk acceleration in Z-direction. Quantity is the time rate of change of acceleration, units, G’s/second. ( f denotes frequency domain. )

>**fBodyAccJerk-meanFreq()-X**		*Type Numeric*  
Mean body jerk acceleration frequency in X-direction. Quantity is a scalar unit, Hz. ( f denotes frequency domain. )
	
>**fBodyAccJerk-meanFreq()-Y**	*Type Numeric*  
Mean body jerk acceleration frequency in Y-direction. Quantity is a scalar unit, Hz. ( f denotes frequency domain. )

>**fBodyAccJerk-meanFreq()-Z**		*Type Numeric*  
Mean body jerk acceleration frequency in Z-direction. Quantity is a scalar unit, Hz. ( f denotes frequency domain. )
	
>**fBodyGyro-mean()-X**			*Type Numeric*  
FFT of the mean body angular velocity in X-direction. Quantity is in units radians/second.  ( f denotes frequency domain. )
	
>**fBodyGyro-mean()-Y**		*Type Numeric*  
FFT of the mean body angular velocity in Y-direction. Quantity is in units radians/second.  ( f denotes frequency domain. )
	
>**fBodyGyro-mean()-Z**		*Type Numeric*  
FFT of the mean body angular velocity in Z-direction. Quantity is in units radians/second.  ( f denotes frequency domain. )
	
>**fBodyGyro-std()-X**		*Type Numeric*  
Standard deviation of the FFT of body angular velocity in X-direction.  Quantity is in units radians/second.  ( f denotes frequency domain. )

>**fBodyGyro-std()-Y**		*Type Numeric*  
Standard deviation of the FFT of body angular velocity in X-direction.  Quantity is in units radians/second.  ( f denotes frequency domain. )

>**fBodyGyro-std()-Z**		*Type Numeric*  
Standard deviation of the FFT of body angular velocity in X-direction.  Quantity is in units radians/second.  ( f denotes frequency domain. )

>**fBodyGyro-meanFreq()-X**	*Type Numeric*  
Mean body angular velocity frequency in X-direction. Quantity is a scalar unit, Hz. ( f denotes frequency domain. )
	
>**fBodyGyro-meanFreq()-Y**	*Type Numeric*  
Mean body angular velocity frequency in Y-direction. Quantity is a scalar unit, Hz. ( f denotes frequency domain. )

>**fBodyGyro-meanFreq()-Z**	*Type Numeric*  
Mean body angular velocity frequency in Z-direction. Quantity is a scalar unit, Hz. ( f denotes frequency domain. )
	
>**fBodyAccMag-mean()**	Type Numeric
FFT of the mean body acceleration magnitude. Quantity is a scalar unit, G’s of gravitational acceleration.  ( f denotes frequency domain. )
	
>**fBodyAccMag-std()**		*Type Numeric*  
Standard deviation of the FFT of body acceleration magnitude. Quantity is a scalar unit, G’s of gravitational acceleration.  ( f denotes frequency domain. )

>**fBodyAccMag-meanFreq()**	*Type Numeric*  
Mean body acceleration magnitude frequency. Quantity is a scalar unit, Hz. ( f denotes frequency domain. )
	
>**fBodyBodyAccJerkMag-mean()**	*Type Numeric*  
FFT of the mean body jerk acceleration magnitude. Quantity is the time rate of change of acceleration, units, G’s/second.  ( f denotes frequency domain. )
	
>**fBodyBodyAccJerkMag-std()**	*Type Numeric*  
Standard deviation of the FFT of body jerk acceleration magnitude. Quantity is the time rate of change of acceleration, units, G’s/second. ( f denotes frequency domain. )

>**fBodyBodyAccJerkMag-meanFreq()**	*Type Numeric*  
Mean body jerk acceleration magnitude frequency. Quantity is a scalar unit, Hz. ( f denotes frequency domain. )

>**fBodyBodyGyroMag-mean()**	*Type Numeric*  
FFT of the mean body angular velocity magnitude. Quantity is in radians/second.  ( f denotes frequency domain. )
	
>**fBodyBodyGyroMag-std()**	*Type Numeric*  
Standard deviation of the FFT of body angular velocity magnitude. Quantity is in radians/second.  ( f denotes frequency domain. )

>**fBodyBodyGyroMag-meanFreq()**	*Type Numeric*  
Mean body angular velocity magnitude frequency. Quantity is a scalar unit, Hz. ( f denotes frequency domain. )

>**fBodyBodyGyroJerkMag-mean()**	*Type Numeric*  
FFT of the body gyro-jerk product magnitude. Quantity has units of G’s/sq.second. ( f denotes frequency domain. )
	
>**fBodyBodyGyroJerkMag-std()**	*Type Numeric*  
Standard deviation of the FFT of the body gyro-jerk product magnitude. Quantity has units of G’s/sq.second.  ( f denotes frequency domain. )

>**fBodyBodyGyroJerkMag-meanFreq()**	*Type Numeric*  
Mean body gyro-jerk product magnitude frequency. Quantity is a scalar unit, Hz. ( f denotes frequency domain. )




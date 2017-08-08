The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions. 'mean' represents mean value and 'std' represents standard deviation.

The data sets used in this analysis include:

"train/subject_train.txt" - Each row identifies the subject who performed the activity for each window sample in the training set.

"test/subject_test.txt" - Each row identifies the subject who performed the activity for each window sample in the test set.

"train/X_train.txt" - Training set.

"test/X_test.txt" - Test set.

"train/y_train.txt" - Training labels.

"test/y_test.txt" - Test labels.

Other files used in this analysis include:

"features.txt" - List of all features. This file is used to extract only the measurements on the mean and standard deviation.

"activity_labels.txt" - Links the class labels with their activity name. This file is used to label the activities with descriptive names.

List of variables:

"subject"                   "activity"                  "tbodyacc-mean-x"          

"tbodyacc-mean-y"           "tbodyacc-mean-z"           "tbodyacc-std-x"           

"tbodyacc-std-y"            "tbodyacc-std-z"            "tgravityacc-mean-x"       

"tgravityacc-mean-y"        "tgravityacc-mean-z"        "tgravityacc-std-x"        

"tgravityacc-std-y"         "tgravityacc-std-z"         "tbodyaccjerk-mean-x"      

"tbodyaccjerk-mean-y"       "tbodyaccjerk-mean-z"       "tbodyaccjerk-std-x"       

"tbodyaccjerk-std-y"        "tbodyaccjerk-std-z"        "tbodygyro-mean-x"         

"tbodygyro-mean-y"          "tbodygyro-mean-z"          "tbodygyro-std-x"          

"tbodygyro-std-y"           "tbodygyro-std-z"           "tbodygyrojerk-mean-x"     

"tbodygyrojerk-mean-y"      "tbodygyrojerk-mean-z"      "tbodygyrojerk-std-x"      

"tbodygyrojerk-std-y"       "tbodygyrojerk-std-z"       "tbodyaccmag-mean"         

"tbodyaccmag-std"           "tgravityaccmag-mean"       "tgravityaccmag-std"       

"tbodyaccjerkmag-mean"      "tbodyaccjerkmag-std"       "tbodygyromag-mean"        

"tbodygyromag-std"          "tbodygyrojerkmag-mean"     "tbodygyrojerkmag-std"     

"fbodyacc-mean-x"           "fbodyacc-mean-y"           "fbodyacc-mean-z"          

"fbodyacc-std-x"            "fbodyacc-std-y"            "fbodyacc-std-z"           

"fbodyaccjerk-mean-x"       "fbodyaccjerk-mean-y"       "fbodyaccjerk-mean-z"      

"fbodyaccjerk-std-x"        "fbodyaccjerk-std-y"        "fbodyaccjerk-std-z"       

"fbodygyro-mean-x"          "fbodygyro-mean-y"          "fbodygyro-mean-z"         

"fbodygyro-std-x"           "fbodygyro-std-y"           "fbodygyro-std-z"          

"fbodyaccmag-mean"          "fbodyaccmag-std"           "fbodybodyaccjerkmag-mean" 

"fbodybodyaccjerkmag-std"   "fbodybodygyromag-mean"     "fbodybodygyromag-std"     

"fbodybodygyrojerkmag-mean" "fbodybodygyrojerkmag-std" 

Output data sets:
1. "CombinedMeanStd" - This is the tidy combined data set containing both training and test data sets, with only the measurements on the mean and standard deviation extracted. Descriptive names are used for the activities and variable names. 
2. "data2" - This is the second, independent tidy data set with the average of each variable for each activity and each subject.


# Input Data
## Raw Data for the Assignment
==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit? degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

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
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

# Tidy Data Set - Output
## Variables 


No	|	Variable name           	        |	Unit	|	Range
-------------------------------------------------------------------------------------------------------------------------------
1	|	nsubject                	        |	integer	|	1-30
2	|	nactivity	                        |	string	|	WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS,            |                                               |               |       SITTING, STANDING, LAYING
3	|	tbodyaccmeanx           	        |	double	|	[-1,+1]
4	|	tbodyaccmeany                      	|	double	|	[-1,+1]
5	|	tbodyaccmeanz           	        |	double	|	[-1,+1]
6	|	tbodyaccstdx            	        |	double	|	[-1,+1]
7	|	tbodyaccstdy            	        |	double	|	[-1,+1]
8	|	tbodyaccstdz            	        |	double	|	[-1,+1]
9	|	tgravityaccmeanx                	|	double	|	[-1,+1]
10	|	tgravityaccmeany                	|	double	|	[-1,+1]
11	|	tgravityaccmeanz                	|	double	|	[-1,+1]
12	|	tgravityaccstdx	                        |	double	|	[-1,+1]
13	|	tgravityaccstdy         	        |	double	|	[-1,+1]
14	|	tgravityaccstdz         	        |	double	|	[-1,+1]
15	|	tbodyaccjerkmeanx               	|	double	|	[-1,+1]
16	|	tbodyaccjerkmeany               	|	double	|	[-1,+1]
17	|	tbodyaccjerkmeanz               	|	double	|	[-1,+1]
18	|	tbodyaccjerkstdx                	|	double	|	[-1,+1]
19	|	tbodyaccjerkstdy                	|	double	|	[-1,+1]
20	|	tbodyaccjerkstdz                	|	double	|	[-1,+1]
21	|	tbodygyromeanx          	        |	double	|	[-1,+1]
22	|	tbodygyromeany	                        |	double	|	[-1,+1]
23	|	tbodygyromeanz	                        |	double	|	[-1,+1]
24	|	tbodygyrostdx           	        |	double	|	[-1,+1]
25	|	tbodygyrostdy                     	|	double	|	[-1,+1]
26	|	tbodygyrostdz           	        |	double	|	[-1,+1]
27	|	tbodygyrojerkmeanx              	|	double	|	[-1,+1]
28	|	tbodygyrojerkmeany              	|	double	|	[-1,+1]
29	|	tbodygyrojerkmeanz              	|	double	|	[-1,+1]
30	|	tbodygyrojerkstdx               	|	double	|	[-1,+1]
31	|	tbodygyrojerkstdy               	|	double	|	[-1,+1]
32	|	tbodygyrojerkstdz               	|	double	|	[-1,+1]
33	|	tbodyaccmagmean	                        |	double	|	[-1,+1]
34	|	tbodyaccmagstd          	        |	double	|	[-1,+1]
35	|	tgravityaccmagmean              	|	double	|	[-1,+1]
36	|	tgravityaccmagstd               	|	double	|	[-1,+1]
37	|	tbodyaccjerkmagmean             	|	double	|	[-1,+1]
38	|	tbodyaccjerkmagstd              	|	double	|	[-1,+1]
39	|	tbodygyromagmean                	|	double	|	[-1,+1]
40	|	tbodygyromagstd         	        |	double	|	[-1,+1]
41	|	tbodygyrojerkmagmean            	|	double	|	[-1,+1]
42	|	tbodygyrojerkmagstd             	|	double	|	[-1,+1]
43	|	fbodyaccmeanx                       	|	double	|	[-1,+1]
44	|	fbodyaccmeany           	        |	double	|	[-1,+1]
45	|	fbodyaccmeanz           	        |	double	|	[-1,+1]
46	|	fbodyaccstdx            	        |	double	|	[-1,+1]
47	|	fbodyaccstdy            	        |	double	|	[-1,+1]
48	|	fbodyaccstdz            	        |	double	|	[-1,+1]
49	|	fbodyaccmeanfreqx               	|	double	|	[-1,+1]
50	|	fbodyaccmeanfreqy               	|	double	|	[-1,+1]
51	|	fbodyaccmeanfreqz               	|	double	|	[-1,+1]
52	|	fbodyaccjerkmeanx               	|	double	|	[-1,+1]
53	|	fbodyaccjerkmeany               	|	double	|	[-1,+1]
54	|	fbodyaccjerkmeanz               	|	double	|	[-1,+1]
55	|	fbodyaccjerkstdx                	|	double	|	[-1,+1]
56	|	fbodyaccjerkstdy                	|	double	|	[-1,+1]
57	|	fbodyaccjerkstdz                	|	double	|	[-1,+1]
58	|	fbodyaccjerkmeanfreqx           	|	double	|	[-1,+1]
59	|	fbodyaccjerkmeanfreqy           	|	double	|	[-1,+1]
60	|	fbodyaccjerkmeanfreqz           	|	double	|	[-1,+1]
61	|	fbodygyromeanx          	        |	double	|	[-1,+1]
62	|	fbodygyromeany          	        |	double	|	[-1,+1]
63	|	fbodygyromeanz          	        |	double	|	[-1,+1]
64	|	fbodygyrostdx           	        |	double	|	[-1,+1]
65	|	fbodygyrostdy           	        |	double	|	[-1,+1]
66	|	fbodygyrostdz           	        |	double	|	[-1,+1]
67	|	fbodygyromeanfreqx              	|	double	|	[-1,+1]
68	|	fbodygyromeanfreqy              	|	double	|	[-1,+1]
69	|	fbodygyromeanfreqz              	|	double	|	[-1,+1]
70	|	fbodyaccmagmean	                        |	double	|	[-1,+1]
71	|	fbodyaccmagstd	                        |	double	|	[-1,+1]
72	|	fbodyaccmagmeanfreq             	|	double	|	[-1,+1]
73	|	fbodybodyaccjerkmagmean	                |	double	|	[-1,+1]
74	|	fbodybodyaccjerkmagstd          	|	double	|	[-1,+1]
75	|	fbodybodyaccjerkmagmeanfreq	        |	double	|	[-1,+1]
76	|	fbodybodygyromagmean	                |	double	|	[-1,+1]
77	|	fbodybodygyromagstd             	|	double	|	[-1,+1]
78	|	fbodybodygyromagmeanfreq	        |	double	|	[-1,+1]
79	|	fbodybodygyrojerkmagmean	        |	double	|	[-1,+1]
80	|	fbodybodygyrojerkmagstd	                |	double	|	[-1,+1]
81	|	fbodybodygyrojerkmagmeanfreq	        |	double	|	[-1,+1]
82	|	angletbodyaccmeangravity        	|	double	|	[-1,+1]
83	|	angletbodyaccjerkmeangravitymean	|	double	|	[-1,+1]
84	|	angletbodygyromeangravitymean	        |	double	|	[-1,+1]
85	|	angletbodygyrojerkmeangravitymean	|	double	|	[-1,+1]
86	|	anglexgravitymean               	|	double	|	[-1,+1]
87	|	angleygravitymean               	|	double	|	[-1,+1]
88	|	anglezgravitymean	                |	double	|	[-1,+1]







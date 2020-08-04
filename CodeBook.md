# Tidying the Human Activity Recognition Using Smartphones Dataset
This project is the course project for the [Getting and Cleaning Data](https://www.coursera.org/learn/data-cleaning) course offered by the [Johns Hopkins University](https://www.jhu.edu/) through [Coursera](https://www.coursera.org/).

## Project Intro/Objective
The purpose of this project is obtaining, cleaning and tidying the [Human Activity Recognition Using Smartphones Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) using the various methods learnt in the [course](https://www.coursera.org/learn/data-cleaning). The data set obtained by this project is in simple and tidy form which can be used for further analysis.  

## Human Activity Recognition Using Smartphones Dataset
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

## List of variables in the tidy dataset
* subject
* activity
* features 
* mean 
* sd

#### subject
These are the test subjects. 30 people were selected as test subjects for this study. They are numbered from 1 to 30 respectively.

#### activity
Observations were recorded when the subject was performing the following activities:-
1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING
These are the activity labels provided in the dataset.

#### features
The features variable can be determined by the features.txt and features_info.txt files provided with the dataset.

#### mean
This variable gives the average value for only the mean values for the specific subject, activity and features.

#### sd
This variable gives the average value for only the standard deviation values for the specific subject, activity and features.


# Tidying the Human Activity Recognition Using Smartphones Dataset
This project is the course project for the [Getting and Cleaning Data](https://www.coursera.org/learn/data-cleaning) course offered by the [Johns Hopkins University](https://www.jhu.edu/) through [Coursera](https://www.coursera.org/).

#### -- Project Status: [Completed]

## Project Intro/Objective
The purpose of this project is obtaining, cleaning and tidying the [Human Activity Recognition Using Smartphones Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) using the various methods learnt in the [course](https://www.coursera.org/learn/data-cleaning). The data set obtained by this project is in simple and tidy form which can be used for further analysis.  

### Technologies
> R programming language is used for obtaining the final dataset in this project.

## Project Description
The main aim of this project is preparing a tidy data set. The dataset used here is [Human Activity Recognition Using Smartphones Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) which is provided for the project and can be referred for any required information regarding the given dataset. R languauge is used for this project. The following are some to the R packages used here -
* utils package
* base R package
* tidyverse package
* plyr package

The following steps are followed in the project :-

1. So first, the data is collected from the given link using read.table function from the utils package. 
2. Then the test and train datasets provided for the project are used for creating a single dataset which could be modified and simplified further. 
3. Then some of the basic fuctions are used from the aforementioned packages for extracting specific data regarding only mean and standard deviation measurements.
4. Activity labels are set according to the activity_labels.txt for the different activities of the subjects.
5. Descriptive variable names are given for different columns for the obtained dataset.
6. Using the above steps, a proper well-defined and tidy dataset is created from the initial dataset. 

## Needs of this project

- data cleaning

## Files included with the dataset
* run_analysis.R
* README.md
* CodeBook.md
* Human Activity Recognition Using Smartphones Dataset

## Conclusion
The main conclusion of this project is that it provides a neat, clean and tidy format of Human Activity Recognition Using Smartphones Dataset which can be used for further analysis.

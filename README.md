# Exploratory Data Analysis - Course Project1

## Introduction
The goal of this project is to  examine how household energy usage varies over a 2-day period in February, 2007. Our task is to reconstruct the plots that were constructed using the base plotting system.

### Data Set
This assignment uses data from the UC Irvine Machine Learning Repository, a popular repository for machine learning datasets. In particular, we are  using the “Individual household electric power consumption Data Set”

### Environment
R script was created and executed in R version 3.1.2 (2014-10-31) -- "Pumpkin Helmet".
The data file "household_power_consumption.txt" is assumed to be in the working drectory. 
This script depends on the "sqldf" package, so it has to be installed first.  

#### Scripts
1. main.R (Contains the common function to read/subset the data set for the date range between 2007-02-01 and 2007-02-02)
2. plot1.R (Script creates plot1 and saves to the file plot1.png. Uses function defined in main.R)
3. plot2.R (Script creates plot2 and saves to the file plot2.png. Uses function defined in main.R)
4. plot3.R (Script creates plot3 and saves to the file plot3.png. Uses function defined in main.R)
5. plot4.R (Script creates plot4 and saves to the file plot4.png. Uses function defined in main.R)

In general all the scripts follow the steps given below:
- Read the data.
- Subset the data to specific range.
- Create the plot.
- Write the plot to png device.

#### Executing scripts
- Set the working dir.
- Source the plot code e.g plo1.R
- Execute the function plot1()

#### Plot Images
Plots created by each script are:

1. plot1.png
2. plot2.png
3. plot3.png
4. plot4.png
All the images are of width:480, height:480 and png image format.

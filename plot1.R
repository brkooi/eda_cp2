#Data science Course 4 - Exploratory Data Analysis
# Final assignment
# Script plot1.R


#load packages
packages <- c("data.table","dplyr")
sapply(packages, require, character.only=TRUE, quietly=TRUE)

# download file and unzip datafiles
path_files<-getwd()
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip"
download.file(url, "FNEI_data.zip")
unzip(zipfile = "FNEI_data.zip")

# read datafiles
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
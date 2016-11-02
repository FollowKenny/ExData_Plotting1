# This script cointains generic functions used to input or output the data

# Library and source section
library(data.table)
library(lubridate)


# Function section
HouseInput <- function(house.url = "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip") {
  # This function download the assignment dataset and read and filter it on the
  # wanted days
  #
  # Args: 
  #   house.url: URL of the dataset
  #
  # Returns:
  #   filtered data.table corresponding to days 2007-02-01 and 2007-02-02
  
  current.dir <- getwd()
  dest.file <- file.path(current.dir, 'household.zip')
  #download.file(house.url, dest.file)
  #unzip(dest.file)
  data.file <- file.path(current.dir, 'household_power_consumption.txt')
  fread(input = data.file, na.strings = "?")[Date == "1/2/2007" |
                                             Date == "2/2/2007", ]
}


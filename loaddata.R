setwd("~/Data Science & R Programming/Course Slides/04 Exploratory Data Analysis/assignment1")

filepath <- "./household_power_consumption.txt"

data <- read.table(text = grep("^[1,2]/2/2007", readLines(filepath), value = TRUE), 
                   col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
                   header=TRUE, 
                   sep=";", 
                   na.strings = "?")

dates <- paste(data$Date, data$Time)

datetime <- strptime(dates, "%d/%m/%Y %H:%M:%S")
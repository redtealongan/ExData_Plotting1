setwd("~/Data Science & R Programming/Course Slides/04 Exploratory Data Analysis/assignment1")

source("loaddata.R")

png(filename='plot1.png',width=480,height=480,units='px')

hist(data$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

dev.off()
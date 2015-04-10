setwd("~/Data Science & R Programming/Course Slides/04 Exploratory Data Analysis/assignment1")

source("loaddata.R")

png(filename="plot2.png",width=480,height=480,units="px")

plot(datetime, data$Global_active_power, ylab="Global Active Power (kilowatts)", xlab="", type="l")

dev.off()
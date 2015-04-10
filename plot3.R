setwd("~/Data Science & R Programming/Course Slides/04 Exploratory Data Analysis/assignment1")

source("loaddata.R")

png(filename="plot3.png",width=480,height=480,units="px")

plot(datetime, data$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering", col="black")

lines(datetime, data$Sub_metering_2, type="l", col="red")

lines(datetime, data$Sub_metering_3, type="l", col="blue")

legend("topright", lty=1, col=c("black","red","blue"), 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()
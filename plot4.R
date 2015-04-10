setwd("~/Data Science & R Programming/Course Slides/04 Exploratory Data Analysis/assignment1")

source("loaddata.R")

png(filename="plot4.png",width=480,height=480,units="px")

par(mfrow=c(2,2))

# First plot
plot(datetime, data$Global_active_power, type="l", 
     xlab="", ylab="Global Active Power")

# Second plot
plot(datetime, data$Voltage, type="l", ylab="Voltage", 
     xlab="datetime")
#axis(1, at = c(1, 1441, 2880), labels=c("Thu", "Fri", "Sat"))

# Third plot
plot(datetime, data$Sub_metering_1, type="l",
     xlab="", ylab="Energy sub metering", col="black")
lines(datetime, data$Sub_metering_2, col="red")
lines(datetime, data$Sub_metering_3, col="blue")
legend("topright", lty=1, col=c("black","red","blue"), 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# Fourth plot
plot(datetime, data$Global_reactive_power, type="l", 
     ylab="Global_reactive_power", xlab="datetime", xaxt="n")

dev.off()
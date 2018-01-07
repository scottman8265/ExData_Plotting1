
  require(data.table)
  require(lubridate)
data <- fread("household_power_consumption.txt", skip="1/2/2007", na.strings="?", nrows = 2 * 24 * 60)
columns <- names(fread("household_power_consumption.txt", nrows = 1))
colnames(data) <- columns

times <- strptime(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")

png(filename = "plot3.png")

plot(times, data$Sub_metering_1, type = "l", xlab = "", ylab="Energy sub metering")
lines(times, data$Sub_metering_2, col = "red")
lines(times, data$Sub_metering_3, col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty = 1)
dev.off()





  require(data.table)
  require(lubridate)
data <- fread("household_power_consumption.txt", skip="1/2/2007", na.strings="?", nrows = 2 * 24 * 60)
columns <- names(fread("household_power_consumption.txt", nrows = 1))
colnames(data) <- columns

times <- strptime(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")

png(filename = "plot2.png")

plot(times, data$Global_active_power, type = "l", xlab = "", ylab="Global Active Power (kilowatts)")

dev.off()




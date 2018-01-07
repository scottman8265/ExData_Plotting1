
  require(data.table)
data <- fread("household_power_consumption.txt", skip="1/2/2007", na.strings="?", nrows = 2 * 24 * 60)
columns <- names(fread("household_power_consumption.txt", nrows = 1))
colnames(data) <- columns

png(filename = "plot1.png")

hist(data$Global_active_power, main ="Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")

dev.off()




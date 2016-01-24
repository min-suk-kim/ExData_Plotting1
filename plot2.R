data <- read.table("household_power_consumption.txt", sep = ";", header = T, quote = "", strip.white = TRUE, stringsAsFactors = F, na.strings = "?")

# date restriction
data <- subset(data, (data$Date == '1/2/2007' | data$Date == '2/2/2007'))
data$DateTime <- strptime(paste(data$Date, data$Time), format = "%d/%m/%Y %H:%M:%S")

png("plot2.png", width = 480, height = 480)
plot(data$DateTime, data$Global_active_power, type = "l", lwd=1, ylab = "Global Active Power (kilowatts)", xlab = "")
dev.off()
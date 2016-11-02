# This script generates plot3

source("miscanellous.R")
png("plot4.png", 480, 480)
house.data <- HouseInput()
house.days <- dmy_hms(paste(house.data$Date, house.data$Time))
par(mfrow=c(2,2), oma=c(0, 2.1, 0, 0))
plot(house.days, house.data$Global_active_power, xlab = "",
    ylab = "Global Active Power", type = "l", mar = c(5.1, 4.1, 4.1, 2.1))
plot(house.days, house.data$Voltage, xlab = "datetime", ylab = "Voltage",
     type = "l")
plot(house.days, house.data$Sub_metering_1, xlab = "",
     ylab = "Energy sub metering", type = "l")
lines(house.days, house.data$Sub_metering_2, col = "red")
lines(house.days, house.data$Sub_metering_3, col = "blue")
legend("topright", bty = "n", 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col=c("black", "red", "blue"), lty = c(1,1,1))
plot(house.days, house.data$Global_reactive_power, xlab = "datetime",
     ylab = "Global_reactive_power", type = "l")
dev.off()
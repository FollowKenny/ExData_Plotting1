# This script generates plot3

source("miscanellous.R")
png("plot3.png", 480, 480)
house.data <- HouseInput()
house.days <- dmy_hms(paste(house.data$Date, house.data$Time))
plot(house.days, house.data$Sub_metering_1, xlab = "",
     ylab = "Energy sub metering", type = "l")
lines(house.days, house.data$Sub_metering_2, col = "red")
lines(house.days, house.data$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "red", "blue"), lty = c(1,1,1))
dev.off()
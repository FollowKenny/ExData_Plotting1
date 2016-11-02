# This script generates plot1

source("miscanellous.R")
png("plot1.png", 480, 480)
House.data <- HouseInput()
hist(House.data$Global_active_power, xlab = "Global Active Power (kilowatts)",
     ylab = "Frequency", col = "red", main = "Global Active Power")
dev.off()
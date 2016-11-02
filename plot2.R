# This script generates plot2

source("miscanellous.R")
png("plot2.png", 480, 480)
house.data <- HouseInput()
plot(dmy_hms(paste(house.data$Date, house.data$Time)), 
    house.data$Global_active_power, xlab = "",
    ylab = "Global Active Power (kilowatts)", type = "l")
dev.off()
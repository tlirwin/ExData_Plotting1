source("readData.R")

# plot 4

png(filename = "./figure/plot4.png", width=504, height=504, bg="transparent")

# first plot
par(mfrow = c(2, 2))
with(dat, plot(datetime, Global_active_power, type="l", xlab="", ylab="Global Active Power"))

#second plot
with(dat, plot(datetime, Voltage, type="l"))

# third plot
with(dat, plot(datetime, Sub_metering_1, type="l", xlab="", ylab="Energy sub metering"))
with(dat, lines(datetime, Sub_metering_2, col="red"))
with(dat, lines(datetime, Sub_metering_3, col="blue"))
legend("topright", lty=1, col=c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty="n")

# fourth plot
with(dat, plot(datetime, Global_reactive_power, type="l"))

dev.off()

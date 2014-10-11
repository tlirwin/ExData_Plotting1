source("readData.R")

# plot 3

png(filename = "./figure/plot3.png", width=504, height=504, bg="transparent")

ylab = "Energy sub metering"
plot(dat$datetime, dat$Sub_metering_1, type="l", ylab=ylab, xlab="")
lines(dat$datetime, dat$Sub_metering_2, col="red")
lines(dat$datetime, dat$Sub_metering_3, col="blue")
legend("topright", lty=1, col=c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()

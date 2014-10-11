source("readData.R")

# plot 2

png(filename = "./figure/plot2.png", width=504, height=504, bg="transparent")

main = "Global Active Power"
ylab = paste(main,  " (kilowatts)")
xlab = ""
plot(dat$datetime, dat$Global_active_power, type="l", xlab=xlab, ylab=ylab)

dev.off()

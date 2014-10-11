source("readData.R")

# plot 1

png(filename = "./figure/plot1.png", width=504, height=504, bg="transparent")

main = "Global Active Power"
xlab = paste(main,  " (kilowatts)")
hist(dat$Global_active_power, main=main, xlab=xlab, col="red")

dev.off()

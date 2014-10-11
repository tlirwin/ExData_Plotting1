
filename = "./data/household_power_consumption.txt"

if (!file.exists(filename)) {

   if (!file.exists("data")) dir.create("data")

   fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
   zipfile = "./data/household_power_consumption.zip"
   download.file(fileUrl, destfile = zipfile, method = "wget")
   unzip(zipfile, exdir = "./data")

   downloadDate <- date()
   fileConn <- file("./data/README")
   writeLines(paste("Download date: ", downloadDate), fileConn)
   close(fileConn)
}

header <- read.table(filename, nrows = 1, header = FALSE, sep = ";", stringsAsFactors = FALSE)

dat <- read.table(filename, sep = ";", header=TRUE, na.strings="?", 
skip = 66636, nrows = 2880)

colnames(dat) <- unlist(header)

# clean the dates
dat$datetime <- strptime(paste(dat$Date, dat$Time, sep=" "), format="%d/%m/%Y %H:%M:%S")


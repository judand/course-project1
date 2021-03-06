#code of plot2
file <- read.table("household_power_consumption.txt", header=T, sep=";", na.strings="?")
usedData <- file[file$Date %in% c("1/2/2007","2/2/2007"),]
setTime <- strptime(paste(usedData$Date, usedData$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
finalFile <- cbind(setTime,usedData)

png(file="plot2.png",bg="white",width=480, height=480, units= "px")
plot(finalFile$setTime, finalFile$Global_active_power, type = "l", col="black", xlab="",ylab="Global Active Power(kilowatts)")
dev.off()

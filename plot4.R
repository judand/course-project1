
file <- read.table(".¿/household_power_consumption.txt", header=T, sep=";", na.strings="?")
usedData <- file[file$Date %in% c("1/2/2007","2/2/2007"),]
setTime <- strptime(paste(usedData$Date, usedData$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
finalFile <- cbind(setTime,usedData)

png(file="plot4.png",bg="white",width=480, height=480, units= "px")
par(mfrow=c(2,2))
plot(finalFile$setTime,finalFile$Global_active_power, type="l", col="black", xlab="", ylab="Global Active Power")
plot(finalFile$setTime,finalFile$Voltage, type="l", col="black", xlab = "datetime",ylab="Voltage")
plot(finalFile$setTime, finalFile$Sub_metering_1, type="l", col="black", xlab="", ylab="Energy sub metering")
lines(finalFile$setTime, finalFile$Sub_metering_2, col="red")
lines(finalFile$setTime, finalFile$Sub_metering_3, col="blue")
legend("topright", legend=c("Sub_metering_1","Sub_metering_1=2","Sub_metering_3"), col=c("black","red","blue"),lty="solid")
plot(finalFile$setTime, finalFile$Global_reactive_power, type="l", col="black",xlab="datetime",ylab="Global_reactive_power")
dev.off()

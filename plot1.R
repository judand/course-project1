arch <- read.table("/household_power_consumption.txt", header=T, sep=";", na.strings="?")
dataused <- arch[arch$Date %in% c("1/2/2007","2/2/2007"),]
setTime <- strptime(paste(dataused$Date, dataused$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
finalFile <- cbind(setTime,dataused)

png(arch="plot1.png",bg="white",width=480, height=480, units= "px")
hist(finalFile$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power(kilowatts)", ylab="Frequency")
dev.off() 

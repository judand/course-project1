
data<-read.table("household.txt",header = TRUE,sep = ";", stringsAsFactors = FALSE)
#converting the type of "Date" with as.date()
data$Date<-as.Date(data$Date,"%d/%m/%Y")
#Subsetting the data necessarys
dataed<-subset(data,Date >= "2007-02-01" & Date <= "2007-02-02") 
#converting the type of "Time"column from "character" to "Time with as.POSIXct()
dataed$Time<-as.POSIXct(paste(dataed$Date, dataed$Time), format="%Y-%m-%d %H:%M:%S")
#converting the rest of the columns into numeric with as.numeric()
dataed[,3:9]<-sapply(dataed[,3:9], as.numeric)
#Creating the PNG file
png(filename = "plot1.png")
with(hist(dataed$Global_active_data,xlab = "Global Active data(watts)",ylab = "Frequency",main = "Global Active data",col = "red"))
dev.off()

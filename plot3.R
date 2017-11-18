

> getwd()
[1] "d:/Documents"
> data<-read.table("household.txt",header = TRUE,sep = ";", stringsAsFactors = FALSE)
> #converting the "Date"  with as.date()
> data$Date<-as.Date(data$Date,"%d/%m/%Y")
> #Subsetting the data with the necessary dates
> data3ex<-subset(data,Date >= "2007-02-01" & Date <= "2007-02-02")
> #converting the type of "Time" with as.POSIXct()
> data3ex$Time<-as.POSIXct(paste(data3ex$Date, data3ex$Time), format="%Y-%m-%d %H:%M:%S")
> #converting the rest of the columns into numeric with as.numeric()
> data3ex[,3:9]<-sapply(data3ex[,3:9], as.numeric)
> #Creating the Time series object model for necessary features
> submetering1series<-ts(data3ex$Sub_metering_1,frequency = 1440,start = 0)
> submetering2series<-ts(data3ex$Sub_metering_2,frequency = 1440,start = 0)
> submetering3series<-ts(data3ex$Sub_metering_3,frequency = 1440,start = 0)
> #Creating the file 
> png(filename = "plot3.png",width=480, height=480, units= "px")
> plot.ts(submetering1series,ylab = "Energy sub metering",ylim = c(0,40),xlab = "Days")
> par(new= T)
> plot.ts(submetering2series,ylab = "Energy sub metering",xlab = "Days",ylim = c(0,40),col = "red")
> par(new= T)
> plot.ts(submetering3series,ylab = "Energy sub metering",xlab = "Days",ylim = c(0,40),col = "blue")
> legend("topright",legend = c("sub_metering_1","sub_metering_2","sub_metering_3"),lwd = c(1,1,1),col = c("black","red","blue"))
> dev.off()
null device 
          1 

> 

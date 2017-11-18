

> data<-read.table("household.txt",header = TRUE,sep = ";", stringsAsFactors = FALSE)
> #convert "Date  as.date()
> data$Date<-as.Date(data$Date,"%d/%m/%Y")
> #Subset the data with the necessary dates
> datachange<-subset(data,Date >= "2007-02-01" & Date <= "2007-02-02") 
> #convert the type of "Time" with as.POSIXct()
> datachange$Time<-as.POSIXct(paste(datachange$Date, datachange$Time), format="%Y-%m-%d %H:%M:%S")
> #converting the rest of the columns  with as.numeric()
> datachange[,3:9]<-sapply(datachange[,3:9], as.numeric)
> #Creating the "Global_active_power" 
> powerseries<-ts(datachange$Global_active_power,frequency = 1440,start = 0)
> #Creating the file 
> png(filename = "plot2.png")
>#note. days in half because i dont know how make this
> plot.ts(powerseries,ylab = "Global Active data (Kilowatts)",xlab = "Days)")
> dev.off() 
null device 
          1  
> 

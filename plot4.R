
R version 3.4.2 (2017-09-28) -- "Short Summer"
Copyright (C) 2017 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64 (64-bit)

R es un software libre y viene sin GARANTIA ALGUNA.
Usted puede redistribuirlo bajo ciertas circunstancias.
Escriba 'license()' o 'licence()' para detalles de distribucion.

R es un proyecto colaborativo con muchos contribuyentes.
Escriba 'contributors()' para obtener más información y
'citation()' para saber cómo citar R o paquetes de R en publicaciones.

Escriba 'demo()' para demostraciones, 'help()' para el sistema on-line de ayuda,
o 'help.start()' para abrir el sistema de ayuda HTML con su navegador.
Escriba 'q()' para salir de R.

[Previously saved workspace restored]

> getwd()
[1] "d:/Documents"
> data<-read.table("household.txt",header = TRUE,sep = ";", stringsAsFactors = FALSE)
> #converting the type of "Date" with as.date()
> data$Date<-as.Date(data$Date,"%d/%m/%Y")
> #Subsetting the data with the necessary dates
> data4ex<-subset(data,Date >= "2007-02-01" & Date <= "2007-02-02") 
> #converting the type of "Time" with as.POSIXct()
> data4ex$Time<-as.POSIXct(paste(data4ex$Date, data4ex$Time), format="%Y-%m-%d %H:%M:%S")
> #converting the rest of the columns into numeric with as.numeric()
> data4ex[,3:9]<-sapply(data4ex[,3:9], as.numeric)
> #Creating the Time series object model for necessary features
> powerseries<-ts(data4ex$Global_active_power,frequency = 1440,start = 0)
> submetering1series<-ts(data4ex$Sub_metering_1,frequency = 1440,start = 0)
> submetering2series<-ts(data4ex$Sub_metering_2,frequency = 1440,start = 0)
> submetering3series<-ts(data4ex$Sub_metering_3,frequency = 1440,start = 0)
> voltageseries<-ts(data4ex$Voltage,frequency = 1440,start = 0)
> Reactiveseries<-ts(data4ex$Global_reactive_power,frequency = 1440,start = 0)
> #Creating the file 
> png(filename = "plot4.png",width=480, height=480, units= "px")
> par(mfcol = c(2,2),mar = c(6,6,3,3))
> plot.ts(powerseries,ylab = "Global Active Power (Kilowatts)",xlab = "Days")
> plot.ts(submetering1series,ylab = "Energy sub metering",ylim = c(0,40),xlab = "Days")
> par(new= T)
> plot.ts(submetering2series,ylab = "Energy sub metering",xlab = "Days",ylim = c(0,40),col = "red")
> par(new= T)
> plot.ts(submetering3series,ylab = "Energy sub metering",xlab = "Days",ylim = c(0,40),col = "blue")
> plot.ts(voltageseries,ylab = "Voltage",xlab = "Days")
> plot.ts(Reactiveseries,ylab = "Global_Reactive_power",xlab = "Days")
> dev.off()
null device 
          1 
> 

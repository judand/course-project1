
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
> save.image("d:\\Documents\\Coursera\\w")
> data<-read.table("household.txt",header = TRUE,sep = ";", stringsAsFactors = FALSE)
> #converting the type of "Date" with as.date()
> data$Date<-as.Date(data$Date,"%d/%m/%Y")
> #Subsetting the data necessarys
> dataed<-subset(data,Date >= "2007-02-01" & Date <= "2007-02-02") 
> #converting the type of "Time"column from "character" to "Time with as.POSIXct()
> dataed$Time<-as.POSIXct(paste(dataed$Date, dataed$Time), format="%Y-%m-%d %H:%M:%S")
> #converting the rest of the columns into numeric with as.numeric()
> dataed[,3:9]<-sapply(dataed[,3:9], as.numeric)
> #Creating the PNG file
> png(filename = "plot1.png")
> with(hist(dataed$Global_active_data,xlab = "Global Active data(watts)",ylab = "Frequency",main = "Global Active data",col = "red"))
Error in hist.default(dataed$Global_active_data, xlab = "Global Active data(watts)",  : 
  'x' must be numeric
> dev.off()
null device 
          1 
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
> plot.ts(powerseries,ylab = "Global Active data (Kilowatts)",xlab = "Days(units in half days)")
> dev.off() 
null device 
          1 
> png(filename = "plot2.png")
> plot.ts(powerseries,ylab = "Global Active data (Kilowatts)",xlab = "Days")
> dev.off() 
null device 
          1 
> powerseries<-ts(datachange$Global_active_power,frequency = 2000,start = 0)
> png(filename = "plot2.png")
> plot.ts(powerseries,ylab = "Global Active data (Kilowatts)",xlab = "Days")
> dev.off() 
null device 
          1 
> powerseries<-ts(datachange$Global_active_power,frequency = 500,start = 0)
> png(filename = "plot2.png")
> plot.ts(powerseries,ylab = "Global Active data (Kilowatts)",xlab = "Days")
> dev.off() 
null device 
          1 
> powerseries<-ts(datachange$Global_active_power,frequency = 200,start = 0)
> png(filename = "plot2.png")
> plot.ts(powerseries,ylab = "Global Active data (Kilowatts)",xlab = "Days")
> dev.off() 
null device 
          1 
> powerseries<-ts(datachange$Global_active_power,frequency = 930,start = 0)
> png(filename = "plot2.png")
> plot.ts(powerseries,ylab = "Global Active data (Kilowatts)",xlab = "Days")
> dev.off() 
null device 
          1 
> powerseries<-ts(datachange$Global_active_power,frequency = 100,start = Thue)
Error in ts(datachange$Global_active_power, frequency = 100, start = Thue) : 
  objeto 'Thue' no encontrado
> powerseries<-ts(datachange$Global_active_power,frequency = 1,start = Thue)
Error in ts(datachange$Global_active_power, frequency = 1, start = Thue) : 
  objeto 'Thue' no encontrado
> powerseries<-ts(datachange$Global_active_power,frequency = 1,start = c(1,1))
> png(filename = "plot2.png")
> plot.ts(powerseries,ylab = "Global Active data (Kilowatts)",xlab = "Days")
> dev.off() 
null device 
          1 
> powerseries<-ts(datachange$Global_active_power,frequency = 1500,start = 0)
> png(filename = "plot2.png")
> plot.ts(powerseries,ylab = "Global Active data (Kilowatts)",xlab = "Days")
> dev.off() 
null device 
          1 
> powerseries<-ts(datachange$Global_active_power,frequency = 2500,start = 0)
> png(filename = "plot2.png")
> plot.ts(powerseries,ylab = "Global Active data (Kilowatts)",xlab = "Days")
> dev.off() 
null device 
          1 
> powerseries<-ts(datachange$Global_active_power,frequency = 1000,start = 0)
> png(filename = "plot2.png")
> plot.ts(powerseries,ylab = "Global Active data (Kilowatts)",xlab = "Days")
> dev.off() 
null device 
          1 
> powerseries<-ts(datachange$Global_active_power,frequency = 500,start = 0)
> png(filename = "plot2.png")
> plot.ts(powerseries,ylab = "Global Active data (Kilowatts)",xlab = "Days")
> dev.off() 
null device 
          1 
> powerseries<-ts(datachange$Global_active_power)
> png(filename = "plot2.png")
> plot.ts(powerseries,ylab = "Global Active data (Kilowatts)",xlab = "Days")
> dev.off() 
null device 
          1 
> powerseries<-ts(datachange$Global_active_power,frequency = 8333,start = 0)
> png(filename = "plot2.png")
> plot.ts(powerseries,ylab = "Global Active data (Kilowatts)",xlab = "Days")
> dev.off() 
null device 
          1 
> powerseries<-ts(datachange$Global_active_power,frequency = 10000,start = 0)
> png(filename = "plot2.png")
> plot.ts(powerseries,ylab = "Global Active data (Kilowatts)",xlab = "Days")
> dev.off() 
null device 
          1 
> powerseries<-ts(datachange$Global_active_power,frequency = 1000,start = 0)
> png(filename = "plot2.png")
> plot.ts(powerseries,ylab = "Global Active data (Kilowatts)",xlab = "Days")
> dev.off() 
null device 
          1 
> powerseries<-ts(datachange$Global_active_power,frequency = 600,start = 0)
> plot.ts(powerseries,ylab = "Global Active data (Kilowatts)",xlab = "Days")
> powerseries<-ts(datachange$Global_active_power,frequency = 800,start = 0)
> plot.ts(powerseries,ylab = "Global Active data (Kilowatts)",xlab = "Days")
> powerseries<-ts(datachange$Global_active_power,frequency = 400,start = 0)
> plot.ts(powerseries,ylab = "Global Active data (Kilowatts)",xlab = "Days")
> powerseries<-ts(datachange$Global_active_power,frequency = 1200,start = 0)
> plot.ts(powerseries,ylab = "Global Active data (Kilowatts)",xlab = "Days")
> powerseries<-ts(datachange$Global_active_power,frequency = 12000,start = 0)
> plot.ts(powerseries,ylab = "Global Active data (Kilowatts)",xlab = "Days")
> powerseries<-ts(datachange$Global_active_power,frequency = 200,start = 0)
> plot.ts(powerseries,ylab = "Global Active data (Kilowatts)",xlab = "Days")
> powerseries<-ts(datachange$Global_active_power,frequency = 100,start = 0)
> plot.ts(powerseries,ylab = "Global Active data (Kilowatts)",xlab = "Days")
> powerseries<-ts(datachange$Global_active_power,frequency = 10,start = 0)
> plot.ts(powerseries,ylab = "Global Active data (Kilowatts)",xlab = "Days")
> powerseries<-ts(datachange$Global_active_power,frequency = 5,start = 0)
> plot.ts(powerseries,ylab = "Global Active data (Kilowatts)",xlab = "Days")
> powerseries<-ts(datachange$Global_active_power,frequency = 5000,start = 0)
> plot.ts(powerseries,ylab = "Global Active data (Kilowatts)",xlab = "Days")
> powerseries<-ts(datachange$Global_active_power,frequency = 500,start = 0)
> plot.ts(powerseries,ylab = "Global Active data (Kilowatts)",xlab = "Days")
> powerseries<-ts(datachange$Global_active_power,frequency = 14400,start = 0)
> powerseries<-ts(datachange$Global_active_power,frequency = 1440,start = 0)
> plot.ts(powerseries,ylab = "Global Active data (Kilowatts)",xlab = "Days")
> powerseries<-ts(datachange$Global_active_power,frequency = 2880,start = 0)
> plot.ts(powerseries,ylab = "Global Active data (Kilowatts)",xlab = "Days")
> powerseries<-ts(datachange$Global_active_power,frequency = 1440,start = 0)
> powerseries<-ts(datachange$Global_active_power,frequency = 1440,start = 0)
> png(filename = "plot2.png")
> plot.ts(powerseries,ylab = "Global Active data (Kilowatts)",xlab = "Days")
> dev.off() 
windows 
      2 
> 

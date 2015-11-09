tableHeader <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
electricData <- read.table("household_power_consumption.txt", sep=";", col.names=tableHeader, skip=66637, nrows=2880)
daysOfWeek <- c("Thu", "Fri", "Sat")
par(mfrow=c(2,2))

##Left Top Plot
plot(electricData$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xaxt="n")
axis(1, at=1:3, labels=daysOfWeek[1:3])

##Right Top Plot
plot(electricData$Voltage, type="l", ylab="Voltage", xaxt="n")
axis(1, at=1:3, labels=daysOfWeek[1:3])

##Left Bottom Plot
plot(electricData$Sub_metering_1, type="l", ylab="Energy sub metering", xaxt="n")
lines(electricData$Sub_metering_2, col="red")
lines(electricData$Sub_metering_3, col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=1, box.lty=0, cex=.4, pt.cex=.75 )
axis(1, at=1:3, labels=daysOfWeek[1:3])

##Right Bottom Plot
plot(electricData$Global_reactive_power, type="l", ylab="Global_reactive_power", xaxt="n")
axis(1, at=1:3, labels=daysOfWeek[1:3])


dev.print(png, filename = 'plot4.png', width = 480, height = 480) 
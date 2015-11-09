tableHeader <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
electricData <- read.table("household_power_consumption.txt", sep=";", col.names=tableHeader, skip=66637, nrows=2880)
hist(electricData$Global_active_power, col="red", main=paste("Global Active Power"), xlab="Global Active Power (kilowatts)")
dev.print(png, filename = 'plot1.png', width = 480, height = 480) 
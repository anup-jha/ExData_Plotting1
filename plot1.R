x <- subsetElecPower$Global_active_power

hist(x, breaks=11, col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")

dev.copy(png,'plot1.png')


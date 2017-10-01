par(mfrow = c(2, 2))

#### PLOT 1
plot(
    subsetElecPower$z,
    subsetElecPower$Global_active_power,
    xlab = "",
    ylab = "Global Active Power (kilowatts)",
    type = "l"
)

#### PLOT 2
plot(
    subsetElecPower$z,
    subsetElecPower$Voltage,
    type = "l",
    xlab = "datetime",
    ylab = "Voltage"
)

#### PLOT 3

plot(
    subsetElecPower$z,
    subsetElecPower$Sub_metering_1,
    xlab = "",
    ylab = "Energy sub metering",
    type = "l"
)
lines(subsetElecPower$z, subsetElecPower$Sub_metering_2, col = "red")
lines(subsetElecPower$z, subsetElecPower$Sub_metering_3, col = "blue")

legend(
    "topright",
    col = c("black", "red", "blue"),
    c("Sub_metering_1  ", "Sub_metering_2  ", "Sub_metering_3  "),
    cex = 0.75,
    lty = c(1, 1),
    lwd = c(1, 1),
    bty = "n" ,
    cex = .5
)

####PLOT 4
plot(
    subsetElecPower$z,
    subsetElecPower$Global_reactive_power,
    xlab = "datetime",
    ylab = "Global reactive Power",
    type = "l"
)
